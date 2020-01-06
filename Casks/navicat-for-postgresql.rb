cask 'navicat-for-postgresql' do
  version '15.0.7'
  sha256 '2d46c2e8b01530497981e512c76ca2ce6ac3f110e9d219fea4feedb6495c6b15'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
