cask 'navicat-for-mariadb' do
  version '12.0.14'
  sha256 'eecaaf1656728f3ffd21b4b878e5fef25b2d995cacce22ebf2bb10d40d9d3a7b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: '733ff7549bb72b001505d33a916b7fe4dce7a001cffc4a7a13fdee3c9ef59f12'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
