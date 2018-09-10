cask 'navicat-for-mysql' do
  version '12.1.7'
  sha256 '2ce0140dcaa5a68e578d05614edf62b47bfb3a1427122f30064181cd4970584f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
