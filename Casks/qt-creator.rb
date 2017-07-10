cask 'qt-creator' do
  version '4.3.1'
  sha256 '0098a420d43578b064382a73a706bf145ed04e352277a9609ee2970b6146d546'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  app 'Qt Creator.app'
end
