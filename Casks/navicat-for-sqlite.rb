cask 'navicat-for-sqlite' do
  version '11.2.10'
  sha256 '75422202aa31d15342c93b8e02657e320d42bc2701abe25f425e1142b0a45aba'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
