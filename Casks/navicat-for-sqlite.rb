cask 'navicat-for-sqlite' do
  version '11.2.11'
  sha256 'fa6bcd775f0ce2a6b462a1574d5e3f606c57f5c0b0b8f0a10e1d026be7a5450a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
