cask 'qt-creator' do
  version '4.11.1'
  sha256 'b2f57ba6a1df8a30d0d75beb37bbbb6598dd733082e4ccf6ddf33203b32ba74c'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
