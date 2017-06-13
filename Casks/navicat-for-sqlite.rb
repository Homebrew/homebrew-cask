cask 'navicat-for-sqlite' do
  version '12.0.2'
  sha256 'bd887056fe1dc4ed3c0fbd6d72032df8697dbb1ba8cd31c13bbaa154622347b6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note',
          checkpoint: 'fe421cb6f83a201df044dc1349fe8bae0de41469302342a16af326463f10ba37'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
