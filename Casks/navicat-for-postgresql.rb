cask 'navicat-for-postgresql' do
  version '15.0.4'
  sha256 '56f5d7baf57445c3fe51f256a3c447f38064f024ef8bd2548ed07c506ab4815d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
