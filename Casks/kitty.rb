cask 'kitty' do
  version '0.8.0'
  sha256 '99fcc8e1a61de9bffa0a1b8de6d896dadb148e49c0a35a44534a7d1ad9067a3d'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '056c22a637cba49b9e3938b0492cf7e6f7c85371636607d9b11d28c99983fec9'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
