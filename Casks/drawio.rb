cask 'drawio' do
  version '10.7.5'
  sha256 '0f0626b7fbae8e4dfac9087d5c38dfdf9e942d890743f988f69a877aa4155d7b'

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
