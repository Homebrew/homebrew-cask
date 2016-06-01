cask 'qt-creator' do
  version '4.0.0'
  sha256 'd470f00c944cf7d8c69af99386dd1b11e912c9fb5b3302cf83a5549f21abfdc6'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
