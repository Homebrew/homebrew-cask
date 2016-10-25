cask 'navicat-for-sqlite' do
  version '11.2.15'
  sha256 'e8d8e9a4b209d2723ec6a057d708418e8c9379ec3b093c96b94e6e5245d2acd2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
