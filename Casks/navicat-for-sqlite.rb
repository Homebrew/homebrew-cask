cask 'navicat-for-sqlite' do
  version '12.1.5'
  sha256 '6d244580ffc621e9e3d1ed3d666f04456a9a82e8376f12910fe0f34eccab6e3b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
