cask 'navicat-for-mariadb' do
  version '12.0.15'
  sha256 'a00c942f61d5cd9f4d54c784108e4d80e7ce7eb1d394263847aa2c592c30fbb6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note',
          checkpoint: '1ae400b2e257c6aeb2cd35489015bfc2380acc9b223588d552ab1c8d04dff8df'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
