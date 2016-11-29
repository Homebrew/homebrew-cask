cask 'navicat-for-sqlite' do
  version '11.2.15'
  sha256 'a04e84ae6ded5e6c5045ee3b2b88b568822a701f12924196097fba664c0073c4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
