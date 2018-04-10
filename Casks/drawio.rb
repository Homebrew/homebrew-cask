cask 'drawio' do
  version '8.4.7'
  sha256 'ab42c4a837ad27c45aaaf48320ec2a17bef77845c6483fc94ba6c58de96a3c96'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: '2fcddfe9323468a418e40a489d0137f0e54968a9346b8254a330635b5d29f720'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap trash: [
               '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
               '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
               '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
             ]
end
