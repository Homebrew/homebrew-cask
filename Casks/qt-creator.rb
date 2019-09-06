cask 'qt-creator' do
  version '4.10.0'
  sha256 '9771159c233ffee976d82c736ce8862e90ed1751a68814d7b3894d8e4c8a3812'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
