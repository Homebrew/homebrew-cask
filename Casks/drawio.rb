cask 'drawio' do
  version '12.1.0'
  sha256 '51682a637f8701d6b3597b0fcc06e4173454536b4fb98873fc95cb03dab0d59d'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap trash: [
               '~/Library/Application Support/draw.io',
               '~/Library/Caches/com.jgraph.drawio.desktop',
               '~/Library/Logs/draw.io',
               '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
               '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
               '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
               '~/Library/WebKit/com.jgraph.drawio.desktop',
             ]
end
