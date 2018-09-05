cask 'qt-creator' do
  version '4.7.0'
  sha256 '3fdcb30220b39cb9b7c22721435b044559dfdb273675a632abd9ffba1f2501b7'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
