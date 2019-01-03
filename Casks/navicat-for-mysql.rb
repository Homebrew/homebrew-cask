cask 'navicat-for-mysql' do
  version '12.1.13'
  sha256 '2dbde626225934cf8591e50b27430e5aa651444ad206b735191595ca4f79f8c0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
