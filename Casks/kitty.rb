cask 'kitty' do
  version '0.10.1'
  sha256 '630e11f748b51b27c41a8d304e590866790b93e506390b8c481ca27201ca1149'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '927643c8990caf42826e3cf8e2b8fd8c6a58a6e4337b077b600271aa2eb97310'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
