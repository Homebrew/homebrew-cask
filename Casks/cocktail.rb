cask :v1 => 'cocktail' do
  version :latest
  sha256 :no_check

  if MacOS.release == :snow_leopard
    url 'http://usa.maintain.se/CocktailSLE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/snowleopard/snowleopard.xml'
  elsif MacOS.release == :lion
    url 'http://usa.maintain.se/CocktailLionEdition.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/lion/lion.xml'
  elsif MacOS.release == :mountain_lion
    url 'http://usa.maintain.se/CocktailMLE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml'
  elsif MacOS.release == :mavericks
    url 'http://usa.maintain.se/CocktailME.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  else
    url 'http://usa.maintain.se/CocktailYE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  end

  homepage 'http://www.maintain.se/cocktail'
  license :commercial

  app 'Cocktail.app'
end
