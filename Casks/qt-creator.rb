cask 'qt-creator' do
  version '4.6.2'
  sha256 'dcc1c9956add13d06423ad09a1fe68b4a21a7bb72db21da1d76283a791606246'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
