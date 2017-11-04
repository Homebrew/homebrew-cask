cask 'drawio' do
  version '7.6.6'
  sha256 'a58307cfd1f39b909bbf96347f3f81e6d875706af6e0576bcb694aea75ba5f13'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: '60dcab7df088afce24739de76e8cf9838bd61e4aa808b472f0ed65cac5004082'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap delete: '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
      trash:  [
                '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
                '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
              ]
end
