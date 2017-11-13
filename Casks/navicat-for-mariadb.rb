cask 'navicat-for-mariadb' do
  version '12.0.18'
  sha256 '32191c0fa8c36b5ba32f16b71e282afd63126696e9a92a767031155a054b58f5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: '7f0a59d9e6839d21aeba46ec6a80d92125a2659b899e7afe5a2419dd502b7fa4'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
