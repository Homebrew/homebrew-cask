cask 'navicat-for-mariadb' do
  version '12.1.5'
  sha256 'c966dbdfdbc4a8759b71d6d08a288322ec76ce0de3fdad4f7b80c64e29b6adab'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
