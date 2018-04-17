cask 'navicat-for-mariadb' do
  version '12.0.24'
  sha256 '466d8ab7903f0045edcedabe911231b3b0025a101908212a946308de1459926d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: 'f7a31c3526925ac0a0be0481d6a0d90ffd833a5ececf983f7d708ecf0c7e5065'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
