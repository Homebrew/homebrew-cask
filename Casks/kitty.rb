cask 'kitty' do
  version '0.6.0'
  sha256 'd729d64afa0b1cd5246026033c335368787a685124317f27e52064d4e0afee08'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '8cb124b70b7fb15881fee47cba6f1c60bd438449e358e8a67a5da772381c0015'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
