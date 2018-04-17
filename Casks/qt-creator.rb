cask 'qt-creator' do
  version '4.6.0'
  sha256 '3a39f078bcdc2bcc563df284c26ba236b889750eec8fa36b3996d8682be7f24a'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
