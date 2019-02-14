cask 'alacritty' do
  version '0.2.8'
  sha256 '6e9670e953bb7688483ac7481be357882d4f0bae99916a6ad9ffc8fe4761f3c9'

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
