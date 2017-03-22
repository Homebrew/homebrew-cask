cask 'navicat-for-sqlite' do
  version '11.2.17'
  sha256 '4f9be16d5884f7cdd3b88be97173893598bf81f07e7fdeb1f4261eb496a29a0d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
