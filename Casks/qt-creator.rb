cask 'qt-creator' do
  version '4.2.1'
  sha256 '0abe38936d0e6d5cadb3ba877053ad9177f380518ba6fc9571b51160e1ae0e25'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
