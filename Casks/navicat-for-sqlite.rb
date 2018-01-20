cask 'navicat-for-sqlite' do
  version '12.0.19'
  sha256 '21235a891909177423b2b5403f9890a57f0525524f9f4576e4ceec46b6be988a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: '9ad09b2d459e8e9dd8e3574857ed3e8dbef0725d03bd288bb38248a3a904525b'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
