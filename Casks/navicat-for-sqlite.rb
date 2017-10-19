cask 'navicat-for-sqlite' do
  version '12.0.15'
  sha256 '8a434755dc6fad5e1c7f20075553ba312b5e974ba0667ba656e4bb6d213d8794'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note',
          checkpoint: '4f87a993a937075411a278567e75b588ca71f630d89061ab60ab392cb68025ef'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
