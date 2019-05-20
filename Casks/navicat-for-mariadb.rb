cask 'navicat-for-mariadb' do
  version '12.1.20'
  sha256 'b8af177befcdc88f2f4e783eb86ba4bc9aec2ad85ccb49fe235e9b82b659f014'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
