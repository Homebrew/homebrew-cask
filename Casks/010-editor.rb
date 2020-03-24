cask '010-editor' do
  version '10.0.1'
  sha256 '63be891a8f8948a274b741c558912e71503e047d6740429bc86bf4518e5d8348'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
