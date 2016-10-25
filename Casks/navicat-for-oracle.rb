cask 'navicat-for-oracle' do
  version '11.2.15'
  sha256 '4a179a71fe41c1202ddee3e976944e5592b90a2c2f5fe4ef2d1a516cdb25ff27'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
