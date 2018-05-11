cask 'navicat-for-sqlite' do
  version '12.0.26'
  sha256 '43d6288c4ebed50b0ebda05f19deedb75860708e26485dd77309ab9e7f3c4f42'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: '77214569b26434fbd2dad3181456aebba3736d7b83b1e9f5ec3105b51177e144'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
