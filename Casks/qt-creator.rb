cask 'qt-creator' do
  version '4.5.1'
  sha256 '0e2fa581aeaf9b2fb502f613c2e9e2fb705cf1565945326b97bd8539822faa7f'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
