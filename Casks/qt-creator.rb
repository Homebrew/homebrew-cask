cask 'qt-creator' do
  version '4.9.0'
  sha256 '11e897c807826d153a159dd0f84e7fda2bf559a44e66a17cb2550ed27dbb0279'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/'
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
