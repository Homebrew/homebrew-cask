cask 'navicat-premium' do
  version '12.1.27'
  sha256 'a5d4c5695067b38aff458b3545e7b4942dc407cd4926d61710aff5cb78f77ab6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
