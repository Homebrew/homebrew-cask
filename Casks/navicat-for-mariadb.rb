cask 'navicat-for-mariadb' do
  version '12.0.19'
  sha256 'a5af6ce1a7d75c6974b008a5fc11a084752eed3b3593469b250b3d9d4587bba1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: 'b5645856b6d6eade3ba672d0cdea8e269c1cc18427d32585cb3a75c533653f58'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
