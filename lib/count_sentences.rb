require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).filter{|sentence| !sentence.empty?}.length   
  #filter method to find empty strings due to using mutliple punctuation back to back. The ! is used to find non empty values in the array
  end
end
