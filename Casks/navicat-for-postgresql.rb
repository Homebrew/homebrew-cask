cask 'navicat-for-postgresql' do
  version '15.0.14'
  sha256 '5da2a8bc49aab4d1c5f4fcde93bac1ed51acd7d0da514b9e9198efef51b59035'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
