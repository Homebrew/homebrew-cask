cask 'qt-creator' do
  version '4.12.2'
  sha256 '9e170abe15b3d20c59a713858814e260a69dadb5cfff2997fbb1188bc268b470'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
