cask 'navicat-for-mariadb' do
  version '12.0.22'
  sha256 '3c84c49019ae282e0f617d3ba2afa2e907dfb4fe36bde6a7b35816369bd26e1b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mariadb-release-note',
          checkpoint: '12d60d461d71b3af50a6bf8300fc5a6e535e33f3cfba318b17a51d346d11cc9d'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
