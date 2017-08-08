cask 'navicat-for-mysql' do
  version '12.0.11'
  sha256 'f7b22c3da51bdcea56b8f7d67cef2e7f665ad4f5a7ef90aa346fad22af784cb0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mysql-release-note#M',
          checkpoint: 'c0c9fc6ddb0ee67671fe78804ea204c823d50e360751d53b75c76402159d52f6'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
