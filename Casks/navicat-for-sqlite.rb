cask 'navicat-for-sqlite' do
  version '12.1.6'
  sha256 '87c30374a9c38b014a65d47c983bb6d045b0a1acb2c696010da17eabde5c71af'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
