cask 'drawio' do
  version '7.1.6'
  sha256 '3513505d4c05c9c0f3c87612b24edf23b09ad5ad57b6bec0e44652df0d5308ca'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: 'e8f6a6dab57f2fc512cf3786fdfd4d6bf9b099afaf3ff54a36a403f50d487304'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap delete: '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
      trash:  [
                '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
                '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
              ]
end
