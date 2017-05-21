cask '010-editor' do
  version '8.0'
  sha256 '2553272d930cd1c8067426d570ebf34bb8dab28632ee3184f2313e303ce6e17d'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/010editor/',
          checkpoint: '1063eeb41e5cf5cc8891d5f7744d91233f482721eee6ff1016c6fbb238d1b278'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
