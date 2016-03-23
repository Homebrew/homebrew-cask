cask 'qt-creator' do
  version '3.6.1'
  sha256 '0e4806e69105d141f767908694d0c59739fb55bfd01f5e72b83a6abad87203ae'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
