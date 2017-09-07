cask 'navicat-for-sqlite' do
  version '12.0.12'
  sha256 '948b61773963a0a2d3a2c10ef02bd6c628d6df0691822e325444102cbf0b7485'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: 'f7e4827d553f7dd3a8199f296a578b3f049b6a974cce7d887d17ea18a107efb0'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
