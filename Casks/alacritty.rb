cask 'alacritty' do
  version '0.2.3'
  sha256 '8e7ec7bfa245d68af4869adc8cc8ce93a2dfcf2ad5cc996e78c2bf37decd12fd'

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
