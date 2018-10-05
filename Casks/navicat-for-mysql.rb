cask 'navicat-for-mysql' do
  version '12.1.9'
  sha256 'b09e956ade07bc71a30e66c71468d65e9d1313b614d1e5781f447fad04fb86a6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
