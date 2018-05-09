cask 'kitty' do
  version '0.9.1'
  sha256 '9e388c43dac0fae0f5c29e444361c93d56fce91826090e93972c6ca769566240'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '6cf29446233f1ab6f606babe9bfcc73e182e4215be7134cbc0675227d679988f'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
