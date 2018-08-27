cask 'kitty' do
  version '0.11.3'
  sha256 '1186f8e7a2ae3a5c7d70ac29e4a607bc52813b86988b602998a9183e57356d51'

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
