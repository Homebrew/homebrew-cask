cask 'navicat-for-mysql' do
  version '11.2.18'
  sha256 'bd2e1f93e2e2512f8298498b1f40b632a206f8b8d0fa4fd9566787ba634cea4d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
