cask 'alacritty' do
  version '0.3.3'
  sha256 '0e53bee6e52356273db6aa9a51247c028e07cf61c2c9be98908594d49a67465c'

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
