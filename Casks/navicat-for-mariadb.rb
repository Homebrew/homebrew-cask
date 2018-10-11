cask 'navicat-for-mariadb' do
  version '12.1.9'
  sha256 'f5279ccc4a3a62c3b087af6f6f7b45ba62eec39dc627ec0d4dbc81d7d80a378c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
