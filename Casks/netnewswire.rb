cask 'netnewswire' do
  version '4.1.0-546'
  sha256 '5198e5f52fa1fc7a951212760e17cefae14fe6b4e8aaf291c5c0818a14df8fb7'

  url "https://cdn.netnewswireapp.com/releases/NetNewsWire-#{version}.zip"
  appcast 'https://updates.blackpixel.com/updates?app=nnw',
          checkpoint: 'cd4a2ff2e246facea0d4fa0abfc4aa400017b9cecf9cf19a3ef45b78116a7ca3'
  name 'NetNewsWire'
  homepage 'http://netnewswireapp.com/'

  app 'NetNewsWire.app'

  zap delete: [
                '~/Library/Application Scripts/com.blackpixel.netnewswire',
                '~/Library/Containers/com.blackpixel.netnewswire',
              ]
end
