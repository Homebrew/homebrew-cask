cask 'alacritty' do
  version '0.4.1'
  sha256 '9718c3b0b5cd430cac162a15f5b7a1e84adb7eba3974c6a391bce96e9d2d2e38'

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
