cask 'navicat-for-sqlite' do
  version '12.0.23'
  sha256 'a08ae3f687d3b01aad1e2d55638da7a3d471e004a816e53a9977c00f6340b6d7'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-for-sqlite-release-note',
          checkpoint: 'f6d6841789e7bbf0e597e9cbe7c914f33192d55b79292e307b76851037c547f6'
  name 'Navicat for SQLite'
  homepage 'https://www.navicat.com/products/navicat-for-sqlite'

  app 'Navicat for SQLite.app'
end
