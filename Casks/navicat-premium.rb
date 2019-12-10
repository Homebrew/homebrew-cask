cask 'navicat-premium' do
  version '15.0.4'
  sha256 '34cf1089335f7c1e48b293218f3cc980f9be0fab77f2637090936bc77aca89cb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
