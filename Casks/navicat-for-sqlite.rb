cask 'navicat-for-sqlite' do
  version '12.0.20'
  sha256 'c28bc5a1b87fe7aa83cd970a2f6a65570c1a6be8edeb80266cb3a197229c211e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: '477e0813c77d7f109bee060585b8e4ee3860b3f8198c31798232fed63e267a01'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
