cask 'navicat-for-sqlite' do
  version '12.0.11'
  sha256 '44d560e88608d2b33315f13da251a29b55c339366b8fcbf4fadebb02438d28d1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: '223133c10332340cf1f24482f7a301f9b4d7927523b999702e0f81618a8c411e'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
