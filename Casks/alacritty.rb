cask 'alacritty' do
  version '0.2.9'
  sha256 'db0fdb5b9535fe72d9f75a0180b28f7066b611e37c13388aa4117478ad1c8e8d'

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
