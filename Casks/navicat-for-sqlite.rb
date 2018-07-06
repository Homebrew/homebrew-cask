cask 'navicat-for-sqlite' do
  version '12.0.27'
  sha256 'd195019798cb4bfd80ab714a21a8422cbcffca79d58dc26a762c29f94005b74e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
