cask 'navicat-for-postgresql' do
  version '15.0.8'
  sha256 '37c77372829f0766c16a4ca30faf3cf4e78f366a541c00d313bdab26692b1cf8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
