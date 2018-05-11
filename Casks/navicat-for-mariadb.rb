cask 'navicat-for-mariadb' do
  version '12.0.26'
  sha256 '9bc5fa194c2942616c28556f791ed5ee15f4dddb8fdfd2e135bf59964b61679c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: '1a308bf0359af74fe4bd7259112684e06814e7100ab5338a53e68259144f7e66'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
