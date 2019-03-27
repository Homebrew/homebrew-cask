cask 'navicat-for-mysql' do
  version '12.1.18'
  sha256 'a7f657ffd62c7e480c9b8e4a1e63bff5e63074a7968b526c685ff3e1bf58c4e9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
