cask '010-editor' do
  version '10.0.2'
  sha256 'd89ca75976a347301eb63985fa2e2b008345cce948703020590d13418c7067eb'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
