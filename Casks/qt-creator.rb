cask :v1 => 'qt-creator' do
  version '3.3.0'
  sha256 '5e5491f6c82d3cb57b3ccc186b5b239ca52c2144034da92fc72ad7e8e6788045'

  url "https://download.qt-project.org/official_releases/qtcreator/#{version[0..2]}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  homepage 'http://qt-project.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Qt Creator.app'
end
