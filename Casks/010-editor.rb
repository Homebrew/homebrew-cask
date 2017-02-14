cask '010-editor' do
  version '7.0.2'
  sha256 'd83c7a34151eba65946ad6dcd9459cd1a83e618211ea8db99b5c35361b544f46'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
