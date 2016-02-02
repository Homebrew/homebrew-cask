cask 'navicat-for-sqlite' do
  version '11.2.7'
  sha256 'cb90b94433efcd58da3d5c1c0738d5ec888d7b4f6ec483d2d0e3a793e1d39a92'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
