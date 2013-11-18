class Cocktail < Cask
  url 'http://usa.maintain.se/CocktailME.dmg'
  homepage 'http://maintain.se/cocktail'
  version 'latest'
  no_checksum
  link 'Cocktail.app'
  
  def caveats; <<-EOS.undent
    This version of Cocktail is for OS X Mavericks only. If you are using other versions of 
    OS X, please run 'brew tap caskroom/versions' and install cocktail-mountainlion /
    cocktail-lion / cocktail-snowleopard
    EOS
  end
end
