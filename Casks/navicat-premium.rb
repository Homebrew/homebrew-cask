cask 'navicat-premium' do
  version '15.0.10'
  sha256 '4c9946e10cb4163a396af38a2d6d39f23da8d2e989c23ff5cccd4897af32e9a8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
