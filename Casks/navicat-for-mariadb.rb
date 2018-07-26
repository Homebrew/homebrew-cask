cask 'navicat-for-mariadb' do
  version '12.1.3'
  sha256 '0a38d2759072de55283e6af74cbd697990cca0da3fd4d4232ef1cad7b2cee8c2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
