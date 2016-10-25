cask 'navicat-for-mariadb' do
  version '11.2.15'
  sha256 '4d05fb39a67ab1a7f910e6a1215e1bcb29b0e54c834ed8a409a9e033858160cc'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
