cask 'navicat-for-sqlite' do
  version '12.1.24'
  sha256 '6be55bca3cca358dc6d28ca94b3614b1e0fe6299afcbe7e1a26efd5c72548e7c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20SQLite&appLang=en'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
