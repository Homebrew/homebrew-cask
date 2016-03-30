cask 'navicat-for-sqlite' do
  version '11.2.9'
  sha256 '09ef113c5ab3ace8f469f1fb76473f27fa6dd55748f23ce4d176bbdd63f6cb2a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'http://www.navicat.com/products/navicat-for-sqlite'
  license :commercial

  app 'Navicat for SQLite.app'
end
