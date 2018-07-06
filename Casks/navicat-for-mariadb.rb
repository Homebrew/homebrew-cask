cask 'navicat-for-mariadb' do
  version '12.0.27'
  sha256 '64233e3df4ce64c3cef78ac61640dcbd8d271a76a50c45b717c66e6b8ece7d73'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20MariaDB"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
