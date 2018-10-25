cask 'navicat-for-mysql' do
  version '12.1.10'
  sha256 'becde08c1a9a9df59e61c905f0e0caaf3688b7b007cc99946d6779e8fb2e2adf'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
