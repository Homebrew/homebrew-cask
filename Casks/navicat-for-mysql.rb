cask 'navicat-for-mysql' do
  version '11.2.17'
  sha256 '8e328346efddb8b0b2f8a3a8df5ab595c5ded8c7b774aa764812bdfaa1888229'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
