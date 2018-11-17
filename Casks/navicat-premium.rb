cask 'navicat-premium' do
  version '12.1.12'
  sha256 'dd541846a3e126d8907a94331937fb6ce4a625c948f74efa615b5372b4fcdd31'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
