cask 'qt-creator' do
  version '4.8.1'
  sha256 '7489e0744996b9e92cd295ff6d30995587551a15e97cf6a6a945044edca7b966'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
