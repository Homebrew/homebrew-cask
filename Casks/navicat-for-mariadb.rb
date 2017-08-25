cask 'navicat-for-mariadb' do
  version '12.0.12'
  sha256 '654aacf22e480b59b3e051906e9364c911eb6962d92aeb307addae1cbdc99540'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-mariadb-release-note#M',
          checkpoint: 'ba19637b935660d205ae7b8342d63ab77c5988387d58aa41e40e03649927eb91'
  name 'Navicat for MariaDB'
  homepage 'https://www.navicat.com/products/navicat-for-mariadb'

  app 'Navicat for MariaDB.app'
end
