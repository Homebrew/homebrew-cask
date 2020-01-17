cask 'navicat-premium' do
  version '15.0.8'
  sha256 '362a214393f7dac7406965c6d35210cafbcefdd50724728a5c7f2fe5fef0ce9d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
