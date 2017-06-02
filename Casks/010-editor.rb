cask '010-editor' do
  version '8.0'
  sha256 '2553272d930cd1c8067426d570ebf34bb8dab28632ee3184f2313e303ce6e17d'

  url "https://download.sweetscape.com/010EditorMac64Installer#{version.no_dots}.dmg"
  appcast 'https://www.sweetscape.com/download/010editor/',
          checkpoint: 'c887832fa16975d253f0785f10446b9530e8e05bb92541881d0bc60c2e22e3ae'
  name '010 Editor'
  homepage 'https://www.sweetscape.com/'

  app '010 Editor.app'
end
