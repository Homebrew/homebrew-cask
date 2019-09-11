cask 'navicat-for-mariadb' do
  version '12.1.24'
  sha256 'e5a957959ce6a3d6b14278aee9bfc5c01d7bb7fdf37979d491365ea66aba7d69'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MariaDB&appLang=en'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
