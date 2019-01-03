cask '010-editor' do
  version '9.0.1'
  sha256 '9e47eaa69bc0bcb8ba173724814b849a66eca57bdc61debb4b5637ec1a129a02'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
