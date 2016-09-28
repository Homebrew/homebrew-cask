cask 'navicat-for-sqlite' do
  version '11.2.14'
  sha256 'b1f1343887973ac870f006f17f643fbad8af4ef3a7839c2b773161003097548e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
