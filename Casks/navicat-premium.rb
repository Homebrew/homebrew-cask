cask 'navicat-premium' do
  version '15.0.11'
  sha256 'f94612841a8285290e14362d6805bad6f66b842ece3fb32b15cce4bcdf7416f8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
