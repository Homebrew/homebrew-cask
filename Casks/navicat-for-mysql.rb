cask 'navicat-for-mysql' do
  version '12.1.12'
  sha256 '1792825d8b5c43e255276f2940d2a302f1b2096be13364de0f9d0b8886fd1a20'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
