cask '010-editor' do
  version '10.0'
  sha256 '353962e71b7b8476039ef8f819ea2458a49c49ea49ba2452ca8a48052e3b077c'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
