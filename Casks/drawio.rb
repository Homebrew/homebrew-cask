cask 'drawio' do
  version '7.3.5'
  sha256 '6d24cfd31cacfc5edfc6c12be0d3c36e8bd7680a1451d3ed0d1c0d26044509d0'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: 'bcc61225089b83663f044378319447da4ff05bd6107cae5309280d60cbf38fe4'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap delete: '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
      trash:  [
                '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
                '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
              ]
end
