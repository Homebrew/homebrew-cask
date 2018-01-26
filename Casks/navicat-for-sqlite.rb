cask 'navicat-for-sqlite' do
  version '12.0.22'
  sha256 'd11e00c90ee1e0cf0d411970be66b3af5d7017b7d8254f74c9df12ea00294bbf'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: '79128b1df6372153ba6f2638bbaa7f1ca9048f3531e1751fe674257051eda311'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
