cask 'qt-creator' do
  version '4.4.1'
  sha256 '6e048a113f34bd3333fbcecdbf916aa292c5fe510662c4ad7cf8d65a515a0d64'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
