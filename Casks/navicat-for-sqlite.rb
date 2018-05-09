cask 'navicat-for-sqlite' do
  version '12.0.25'
  sha256 'c3a9efd870db967a4bf6989a43e05e83272c8b85c103d1945d0d380a02206c74'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: 'ffdf41f5552e8500866242e26e9d0fc352cccb0199a6d8270189557a613e82f5'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
