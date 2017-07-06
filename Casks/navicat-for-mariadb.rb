cask 'navicat-for-mariadb' do
  version '12.0.7'
  sha256 'f6e34c9de98cdae863f2714191d6a839f5efa636c78df459fe773bc3e7f0b224'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: 'f09ea51cf319c03f4695fe9c19b8d975acfa85df1b371a954e0f7f1ea974229f'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
