cask 'navicat-for-mariadb' do
  version '12.1.4'
  sha256 '804c5047a75c6ff8e8ed82d31473c89a5aec7d9ad2d1d5fe57f1e9c972a2b326'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
