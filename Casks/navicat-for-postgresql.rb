cask 'navicat-for-postgresql' do
  version '15.0.6'
  sha256 'f868ada5edb0242dbc8eafbc62b25a27d692c673ff762f2966cb23f8a9313cc1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
