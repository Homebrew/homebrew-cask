cask 'navicat-for-sqlite' do
  version '12.1.7'
  sha256 '809d07c4a52faaf1f7c7d56b3e8bfa8f09daafd23ac48b7a7e88e53f957dc29b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
