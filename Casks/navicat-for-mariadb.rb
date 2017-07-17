cask 'navicat-for-mariadb' do
  version '12.0.9'
  sha256 'b04a892527819ecdce8ba1ce0d2b0dd32cafe3a972ea9d4140c565d5bb36187b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: 'bf3926dfbd12fb7195438c5901208b484b3c7cc13b19acbb8bacb67c19f4291e'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
