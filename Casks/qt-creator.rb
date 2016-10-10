cask 'qt-creator' do
  version '4.1.0'
  sha256 '2d6ed68c055643eaf8063177cfc5ee960c089e6761067d8004dffcfa754f3fb8'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
