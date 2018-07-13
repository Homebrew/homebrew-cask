cask 'navicat-for-mariadb' do
  version '12.0.28'
  sha256 '601292a90722f830f7b27ed5978308f5bcb510e8d9cee27fd79f41de29be40cd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
