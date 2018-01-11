cask 'navicat-for-mariadb' do
  version '12.0.20'
  sha256 '24c216584d1d8bc495616cc21293f0343d6d0352210773a193bffde97e519453'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: '0c26d00167255cf855a38606f920310fda12a3c2341e22035a13c87e25362ff5'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
