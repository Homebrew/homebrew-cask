cask 'qt-creator' do
  version '4.2.2'
  sha256 '3dcdf070bc0cf3e99a587340119b6bc31d7b123dbf7ad2f904812fc78a0e6fb1'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
