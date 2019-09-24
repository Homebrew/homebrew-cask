cask 'navicat-for-mysql' do
  version '12.1.25'
  sha256 '540a9e24c04f34241ad90994f48f2bda74ff146abf6d81c999a0284ce94e8ee9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
