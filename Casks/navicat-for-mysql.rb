cask 'navicat-for-mysql' do
  version '12.0.22'
  sha256 'a9c29c3747f42992c9078432b9f2b1b84690e19e2a6e1e748a9e63940a3f3bd0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-mysql-release-note',
          checkpoint: '0845dbb0629757f0fbc261404b1c1b139c2e1a6c201aac73ca75e0ebfe5daefc'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
