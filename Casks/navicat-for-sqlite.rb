cask 'navicat-for-sqlite' do
  version '11.2.16'
  sha256 '270f17e53ccf4443e02f67ce705388d55fb8d0ae3b0adbcb4bb1452f8d10d94e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
