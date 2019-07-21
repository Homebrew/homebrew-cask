cask 'navicat-for-mariadb' do
  version '12.1.23'
  sha256 '2ff0e29adbd8717dab70397da4c19c9aa994407cd439f8e778443f8a565ec6ce'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
