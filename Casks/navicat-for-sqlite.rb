cask 'navicat-for-sqlite' do
  version '12.0.18'
  sha256 'c4e788719cb19a84fcb21e369bee27991fc5b59d77ab2c7fef4ec04fc8ec3356'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: 'f1d142f2d226bf4895f7ae41458860226e9e6c669750be18522b827c7bf94f7c'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
