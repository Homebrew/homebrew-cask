cask 'navicat-for-sqlite' do
  version '11.2.6'
  sha256 '0e28fc07c862413576ad55b97cbafee25109ae62a0ee5cf233794ad5fb5f148a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
