cask 'qt-creator' do
  version '4.11.0'
  sha256 '5d92ecb1c54a6d5bf08aa8155fea53e5cf2fd89b624299e25e7f4bd0adddf18e'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
