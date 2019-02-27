cask 'navicat-premium' do
  version '12.1.16'
  sha256 '1c115f34080f09550ad71cee070509bce1c4e03fe757f7dcf4d4a0f3a877514c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
