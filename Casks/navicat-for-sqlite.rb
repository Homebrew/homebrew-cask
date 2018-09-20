cask 'navicat-for-sqlite' do
  version '12.1.8'
  sha256 '61c9f46cb8a015988d176345325327407419496243379fd605182471c7335dd4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
