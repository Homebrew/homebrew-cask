cask 'navicat-for-postgresql' do
  version '15.0.10'
  sha256 '1d859a1d7a0dfcd0f801aad04ff0cb5a0363beb9c120f8c7b6f7864c4d6d727a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
