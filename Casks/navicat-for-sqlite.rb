cask 'navicat-for-sqlite' do
  version '12.0.7'
  sha256 'eec796045334b2e9ad4d487b43a5b70335bf8c5f0c83bda0f2d11e3765b8f220'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: '64cac2b68826fd3eee6581712bc2763812fa382d2b12c63f9d1e0001fc4ff06c'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
