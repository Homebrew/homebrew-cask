cask 'navicat-for-mariadb' do
  version '12.1.25'
  sha256 'adc3c9cdd0c0bfc4617119dc57933b9c829d86e37d74950d2e6ea283bec1ace5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
