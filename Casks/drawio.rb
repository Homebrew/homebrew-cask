cask 'drawio' do
  version '7.9.5'
  sha256 '35693bd58e3e9fb624dfc3840f2fe1fd4111013bf1a34725e68569e2594d6c4d'

  # github.com/jgraph/drawio-desktop was verified as official when first introduced to the cask
  url "https://github.com/jgraph/drawio-desktop/releases/download/v#{version}/draw.io-#{version}.dmg"
  appcast 'https://github.com/jgraph/drawio-desktop/releases.atom',
          checkpoint: '436138c90d40e30b994470cd6f12070ed88e258b61c3e7a4653b57faf5c61d8f'
  name 'draw.io Desktop'
  homepage 'https://www.draw.io/'

  app 'draw.io.app'

  zap trash: [
               '~/Library/Preferences/com.jgraph.drawio.desktop.helper.plist',
               '~/Library/Preferences/com.jgraph.drawio.desktop.plist',
               '~/Library/Saved Application State/com.jgraph.drawio.desktop.savedState',
             ]
end
