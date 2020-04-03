cask 'drawio' do
  version '12.9.3'
  sha256 '7d80e8d9d2c856b7c73b88f586aaabe986c277757dbca3cb0c48f5d476e8ae4f'

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
