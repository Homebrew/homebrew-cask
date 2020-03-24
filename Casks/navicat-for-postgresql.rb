cask 'navicat-for-postgresql' do
  version '15.0.12'
  sha256 '4721edb2916e52dea7349ddf4dc889cd0efb86d798747ada3515a86504f4ac5b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_pgsql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20PostgreSQL&appLang=en'
  name 'Navicat for PostgreSQL'
  homepage 'https://www.navicat.com/products/navicat-for-postgresql'

  app 'Navicat for PostgreSQL.app'
end
