cask 'navicat-for-sqlite' do
  version '12.0.5'
  sha256 'e8b2bb8c8e7a6201a49556ebb808956665eb0265166548023258de4bc64fe87b'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/products/navicat-for-sqlite-release-note',
          checkpoint: 'd552ffde2f6bbd534a31aa1203f2921b9591d2e2b3b64c4e67044f4b45d96c2c'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
