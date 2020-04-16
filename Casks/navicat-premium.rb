cask 'navicat-premium' do
  version '15.0.14'
  sha256 'e801355513419d1075a254d517093ec75a6146ff2a7d80310c40b7efbc203cb1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
