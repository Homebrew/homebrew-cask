class Cocktail < Cask
  version :latest
  sha256 :no_check

  url 'http://usa.maintain.se/CocktailME.dmg'
  appcast 'http://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  homepage 'http://maintain.se/cocktail'

  app 'Cocktail.app'
  caveats <<-EOS.undent
    This version of Cocktail is for OS X Mavericks only. If you are using other versions of
    OS X, please run 'brew tap caskroom/versions' and install cocktail-mountainlion /
    cocktail-lion / cocktail-snowleopard
    EOS
end
