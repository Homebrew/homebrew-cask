cask 'qt-creator' do
  version '4.7.1'
  sha256 'e49e92d735dd6901edcdccd580a1755d85606cc0766867f2e148e726b1772254'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
