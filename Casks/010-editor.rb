cask '010-editor' do
  version '8.0'
  sha256 '2553272d930cd1c8067426d570ebf34bb8dab28632ee3184f2313e303ce6e17d'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
