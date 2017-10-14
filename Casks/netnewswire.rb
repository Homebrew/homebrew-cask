cask 'netnewswire' do
  version '4.0.4-545'
  sha256 '18b74389a379760ad9ca240e3d907d5e5f7aaee8e897293df7d7c4c653ce4018'

  url "https://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          checkpoint: '1ffaca043dda0e1b3bfa5fe456d94ba3dd185c9565b80ed1427df7885552ab49'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'

  app 'NetNewsWire.app'

  zap delete: [
                '~/Library/Application Scripts/com.blackpixel.netnewswire',
                '~/Library/Containers/com.blackpixel.netnewswire',
              ]
end
