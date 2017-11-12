cask 'navicat-for-sqlite' do
  version '12.0.17'
  sha256 'ed657b61a0d3394c6aecccfda58e570de520fa27ef723ebc8b3caefa6583c51d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: '2c578768e65443cc18d845b539daa99d19dc80a8a763b04b087d953baa650a83'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
