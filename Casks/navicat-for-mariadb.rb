cask 'navicat-for-mariadb' do
  version '11.2.17'
  sha256 'e0510d95a12ddaf15d705bdf452ede866227f056b54cd1af0f4d9c085ce7a872'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
