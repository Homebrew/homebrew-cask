cask 'navicat-for-postgresql' do
  version '15.0.15'
  sha256 'cbd7a43956780e9160b3dd78e94385c89da9663ea2ebc3b39e1b08f51fdb12e2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
