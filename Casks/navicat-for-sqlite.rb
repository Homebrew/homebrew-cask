cask 'navicat-for-sqlite' do
  version '12.0.9'
  sha256 '71eb73e5f6ab1dfc4a94f1c4d12e7275348a9e682546eea445621475e87e632d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: 'd2218389e4dff13e75cc049cc37f6b9a17bf8bead07a5a0c85a6c56b6933e9d0'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
