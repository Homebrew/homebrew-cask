cask 'qt-creator' do
  version '4.8.2'
  sha256 '02e05c2e21eccfda6bbcc82f5338e75bc3fe073e6f89c2b723c142b205fc0506'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/'
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
