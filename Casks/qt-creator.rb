cask 'qt-creator' do
  version '4.3.0'
  sha256 '37118c49b724d5986fdd052b1098e3d648224837fdc4a8ba4d8fd842dfd561e6'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
