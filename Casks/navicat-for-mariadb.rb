cask 'navicat-for-mariadb' do
  version '12.0.5'
  sha256 '7b865937b3eb5971f9c06afd1b0515c68bb2aa56a7c9d8780e392f12e971ccb6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note',
          checkpoint: '36fa0e353e43b4bbadb5f7c056d779b51b9ba100cfcf82e89d95e7aca4edc0c4'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
