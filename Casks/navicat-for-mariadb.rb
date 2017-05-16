cask 'navicat-for-mariadb' do
  version '11.2.18'
  sha256 '46f76645544a625a8fd6aeb46ff9677aa23e635a21996a459f5581ed9e1861ec'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note',
          checkpoint: '08104c4aa3b8513eb9f6eabaa6889bd4815e64b03a3a92c0efb568eb83aa5457'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
