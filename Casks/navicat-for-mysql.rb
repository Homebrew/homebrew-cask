cask 'navicat-for-mysql' do
  version '12.1.16'
  sha256 'c2d41ae46d33390e6454a60f5236d20e4fba8520bfcfcedc0541a18ddab68492'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
