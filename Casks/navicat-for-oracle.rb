cask 'navicat-for-oracle' do
  version '11.2.15'
  sha256 'c8a607c38cc0b93cab70931cceca71a2d2d08c1f616dd851173c704b1f744f33'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
