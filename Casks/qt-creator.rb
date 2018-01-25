cask 'qt-creator' do
  version '4.5.0'
  sha256 'cb3aac65ddadaccef1bf62a95120f8d74d3e4454f7afcdcb5425f20051d24b5b'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
