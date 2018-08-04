cask 'navicat-for-mysql' do
  version '12.1.4'
  sha256 '8229e2cb035ca36c780d4bb448c030ef83fab56926f15bd87763fbfe00e3ea76'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
