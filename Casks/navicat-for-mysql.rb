cask 'navicat-for-mysql' do
  version '11.2.9'
  sha256 '1f5f4169b7de642ad3ae05189486edbab5e3850f9e83d9e01901f715198ea818'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'http://www.navicat.com/products/navicat-for-mysql'
  license :commercial

  app 'Navicat for MySQL.app'
end
