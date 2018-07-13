cask 'navicat-for-sqlite' do
  version '12.0.28'
  sha256 '077f289c71222d4b8fd282526a9cfc1b8b089b95e11e52d79ce1393263fce99c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
