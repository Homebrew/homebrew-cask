cask '010-editor' do
  version '9.0.2'
  sha256 'fa1455685e77df7b41e4140dbb9b89cff17a8d9df4377bab0ae0361d029c2e66'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
