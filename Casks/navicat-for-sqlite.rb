cask 'navicat-for-sqlite' do
  version '12.0.10'
  sha256 'f2f90c46c0147fdc927486963a595d71e6f97b89b25a661efba638392554e393'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note#M',
          checkpoint: '8cd2bf791f63a2d271a9d551297d26ad6c452ab5c52f91566412e31aae1823c5'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
