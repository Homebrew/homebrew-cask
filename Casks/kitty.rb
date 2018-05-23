cask 'kitty' do
  version '0.10.0'
  sha256 'a31cbc779a06b339942d8317e4060bf4bbbdf37a564538fc225993a627df6401'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'cd7dd7014ba0615d5c62f5a25ad320bee148cb7923fa02b037f52282e8148daa'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
