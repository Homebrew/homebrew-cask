cask 'navicat-premium' do
  version '15.0.6'
  sha256 '7973d89c14f0ff48ffdc1afdcfd21deb5fe132a76a993181d6a7b4bbebb3f302'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
