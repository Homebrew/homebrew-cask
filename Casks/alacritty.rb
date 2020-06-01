cask 'alacritty' do
  version '0.4.3'
  sha256 '89f6acc094cece79734be3e56e0cdcf1d5525fdba3429b979e744e36418577fb'

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
