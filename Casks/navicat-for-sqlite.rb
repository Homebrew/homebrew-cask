cask 'navicat-for-sqlite' do
  version '12.1.4'
  sha256 '5391776402bec73f2c4d7b839798ffffb175ed41fa6a85e78d35940cdfe876f4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
