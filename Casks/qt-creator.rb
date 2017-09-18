cask 'qt-creator' do
  version '4.4.0'
  sha256 'd9e3de1116cc32605452ff6c5ff564e0803c913c8746c21d6efde15c09fc3a23'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
