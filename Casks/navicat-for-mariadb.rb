cask 'navicat-for-mariadb' do
  version '11.2.18'
  sha256 '46f76645544a625a8fd6aeb46ff9677aa23e635a21996a459f5581ed9e1861ec'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
