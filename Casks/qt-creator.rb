cask 'qt-creator' do
  version '4.2.0'
  sha256 '5b9d7fda77b6d3e98bb65d1fb7a33552f4a2e0e8533930c6acc0fbbbeb60dc21'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
