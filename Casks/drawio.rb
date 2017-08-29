cask 'drawio' do
  version '7.1.9'
  sha256 'fbeee024af7a989a62a8c24429ba459febf7e0ec767b5f83b0b49edd3a799d12'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: 'af7b466134abfb2550fa47f70f1fc076e3fa6014d82492a8779162e1c6e133d3'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap delete: '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
      trash:  [
                '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
                '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
              ]
end
