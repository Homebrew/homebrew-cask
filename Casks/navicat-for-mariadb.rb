cask 'navicat-for-mariadb' do
  version '11.2.15'
  sha256 '0f3cbefa16058ffbd59ca40efef83c3ba5cd4e1c7a8b0ca161f53a98b9e3b52e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
