cask 'navicat-premium' do
  version '15.0.3'
  sha256 'f450097c790f8c7a12c21cef9c00813d3ce286b9e35da2fbd269f94bc3acdf44'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
