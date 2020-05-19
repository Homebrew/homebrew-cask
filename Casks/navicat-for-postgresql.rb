cask 'navicat-for-postgresql' do
  version '15.0.16'
  sha256 'a9d02bc77652b045b780664f23e6f7e83b406b9b52614f5c27a19f93e7cf07e3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
