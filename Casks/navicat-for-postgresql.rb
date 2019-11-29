cask 'navicat-for-postgresql' do
  version '15.0.3'
  sha256 '8a3ef451a7bdd529692f1dd32675bfc0422bf3482bd99581c09c570a2735a933'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
