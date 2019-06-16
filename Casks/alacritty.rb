cask 'alacritty' do
  version '0.3.3-rc2'
  sha256 '4fbcba810c9247dbfe4378320a5126cddaf27ea32e391b34caf1ba8636e1a84f'

  url "https://github.com/jwilm/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  appcast 'https://github.com/jwilm/alacritty/releases.atom'
  name 'Alacritty'
  homepage 'https://github.com/jwilm/alacritty/'

  app 'Alacritty.app'

  zap delete: [
                '~/Library/Saved Application State/io.alacritty.savedState',
                '~/.config/alacritty',
              ]
end
