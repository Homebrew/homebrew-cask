cask 'qt-creator' do
  version '4.7.2'
  sha256 '2b262bb733a2794d69451d9de101223fff22e685fc74b29e07c7d84ce5d1d361'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
