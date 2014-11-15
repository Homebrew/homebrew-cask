cask :v1 => 'cocktail' do
  version :latest
  sha256 :no_check

  if MacOS.version == :snow_leopard
    url 'http://usa.maintain.se/CocktailSLE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/snowleopard/snowleopard.xml'
  elsif MacOS.version == :lion
    url 'http://usa.maintain.se/CocktailLionEdition.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/lion/lion.xml'
  elsif MacOS.version == :mountain_lion
    url 'http://usa.maintain.se/CocktailMLE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/mountainlion/mountainlion.xml'
  elsif MacOS.version == :mavericks
    url 'http://usa.maintain.se/CocktailME.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/mavericks/mavericks.xml'
  else
    url 'http://usa.maintain.se/CocktailYE.dmg'
    appcast 'http://www.maintain.se/downloads/sparkle/yosemite/yosemite.xml'
  end

  homepage 'http://www.maintain.se/cocktail'
  license :unknown

  app 'Cocktail.app'
end
