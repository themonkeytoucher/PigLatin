import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	// String vowels[] = {"a","e","i","o","u"};
	// if (sWord.lastIndexOf("a")!=-1) 
	// {
	// 	return sWord.lastIndexOf("a");
	// } 
	// else if (sWord.lastIndexOf("e")!=-1)
	// {
	// 	return sWord.lastIndexOf("e");
	// } 
	// else if (sWord.lastIndexOf("i")!=-1)
	// {
	// 	return sWord.lastIndexOf("i");
	// } 
	// else if (sWord.lastIndexOf("o")!=-1)
	// {
	// 	return sWord.lastIndexOf("o");
	// } 
	// else if (sWord.lastIndexOf("u")!=-1)
	// {
	// 	return (sWord.lastIndexOf("u"));
	// } 
	// else 
	// {
	// 	return -1;
	// }
	for(int i = 0; i < sWord.length(); i++)
       if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || 
          sWord.charAt(i) == 'i' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'u')
      return i;
  return -1;

}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(sWord.lastIndexOf("qu")==0)
	{
		return sWord.substring(2) + sWord.substring(0,2) +"ay";
	}
	else if (findFirstVowel(sWord)==0)
	{
		return sWord +"way";
	}
	else if(findFirstVowel(sWord)>=1)
	{
		return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+ "ay";
	}
	
	else
	{
		return "ERROR";
	}
}
