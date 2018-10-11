cask 'navicat-for-sqlite' do
  version '12.1.9'
  sha256 '981c895373c54f01f6e414918b9b09370f40a0e17d97ce538ec1725306ff4b88'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
