cask 'navicat-for-sqlite' do
  version '11.2.18'
  sha256 '6c184e3aac0bba7d143278ff8163eed38dc4a9c58100096e437a4001d2f053e1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note',
          checkpoint: '6c0ec4a5a8156be12a5111c94bf8f2ebceda8b1ad9064e95c42646078afd36a6'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
