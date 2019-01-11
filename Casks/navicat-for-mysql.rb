cask 'navicat-for-mysql' do
  version '12.1.15'
  sha256 '31dcaa5fab7c3c110f922c3d052e035e2ed782b140709b8bace6b2ada46246ce'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
