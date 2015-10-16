cask :v1 => 'qt-creator' do
  version '3.5.0'
  sha256 '14c9e90a71679eea7d70ee1f60ba1dd5ad595415326d12a9578d0fbcdc9ecec7'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'http://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
