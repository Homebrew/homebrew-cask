cask 'drawio' do
  version '7.4.3'
  sha256 '6daa970645482c0dac22ec2f68a5d2f718fea616fbf88f6d3c0b63477f679ecc'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: 'dbc3397fe4e0ab0681f177fac97dbee5c32f57639b576682c842ff2b3cee7434'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap delete: '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
      trash:  [
                '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
                '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
              ]
end
