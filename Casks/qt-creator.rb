cask 'qt-creator' do
  version '4.11.2'
  sha256 'c3633a1ca1d79693172e624395e609d658d99d16f5b3d8bdfb6ebe4f51efe3e8'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
