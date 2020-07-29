cask 'navicat-for-postgresql' do
  version '15.0.17'
  sha256 '1e2e7410d64970ec778b2a3022d76995f1c9d3b4d3a29b40c4f2215803347647'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
