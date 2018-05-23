cask 'qt-creator' do
  version '4.6.1'
  sha256 '50d9d084e84f963bf4dc191047b9498bf17878f65d2f01946921097b8b631e37'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
