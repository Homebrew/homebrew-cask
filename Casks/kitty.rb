cask 'kitty' do
  version '0.12.0'
  sha256 '115e8fa667651db28317f96b8425fe065461c4bfe6e567d4160337e8b842196a'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
