cask 'navicat-for-postgresql' do
  version '15.0.5'
  sha256 'cf7f620f19ea603fc74913a6b28176221df30d534818c8ec4e10f00ec5db9feb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
