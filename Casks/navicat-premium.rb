cask 'navicat-premium' do
  version '12.1.20'
  sha256 'a6e653cd3ddd490f74cec46a56fe6f39d8b53ed98e2481ad56359899228338f5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
