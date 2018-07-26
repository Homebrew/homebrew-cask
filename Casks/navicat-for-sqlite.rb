cask 'navicat-for-sqlite' do
  version '12.1.3'
  sha256 '50f74652f8d1f3f5d6fd97488df7508d0090b2130a8ae7bf18d83d75751add0f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
