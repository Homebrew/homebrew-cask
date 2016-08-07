cask 'qt-creator' do
  version '4.0.3'
  sha256 '66e75214f6fb98508584851ff29402ddb9ce55958c427648df3650fcbfff9b23'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
