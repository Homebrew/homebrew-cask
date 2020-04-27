cask 'alacritty' do
  version '0.4.2'
  sha256 '333fb06b6976c33691db76c2ff76b7db7548af98bcb197ff0d2dc6a9bf34acaa'

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  appcast 'https://github.com/alacritty/alacritty/releases.atom'
  name 'Alacritty'
  homepage 'https://github.com/alacritty/alacritty/'

  app 'Alacritty.app'
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"

  zap delete: [
                '~/Library/Saved Application State/io.alacritty.savedState',
              ]
end
