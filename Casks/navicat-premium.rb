cask 'navicat-premium' do
  version '15.0.5'
  sha256 '8461c26958c7bb7ca1f9ce4715b4f1fd852b46208b9e988a54b3559796e8362e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
