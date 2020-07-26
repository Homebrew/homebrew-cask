cask 'drawio' do
  version '13.5.1'
  sha256 '4a7a39ef17a70c7095963de5b4f2058512a776ba6892cfe8ef053ccb06e9171c'

  # github.com/jgraph/drawio-desktop/ was verified as official when first introduced to the cask
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
