cask 'navicat-for-mariadb' do
  version '12.0.26'
  sha256 '9bc5fa194c2942616c28556f791ed5ee15f4dddb8fdfd2e135bf59964b61679c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20for%20MariaDB",
          checkpoint: '5672f5fc3ce552392468292b5de2ae655c1f6d5093ca35835310aca648ac7c01'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
