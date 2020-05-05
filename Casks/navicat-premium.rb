cask 'navicat-premium' do
  version '15.0.15'
  sha256 '626609232cce4b67420ed66d68d0a6dd798ec8e40e1783a666f1bf281e875146'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
