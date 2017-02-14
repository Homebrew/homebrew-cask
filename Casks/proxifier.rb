cask 'proxifier' do
  version '2.18'
  sha256 '8ecac718e1292af4871184412fd6096f0e8fe41cd25280eec2d94812f6e0efb7'

  url 'https://www.proxifier.com/distr/ProxifierMac.zip'
  appcast 'https://www.proxifier.com/distr/last_versions/ProxifierMac.txt',
          checkpoint: '5c316b2043de3d51392e3b60fc0894167c9b2c8abb5d1fe91ccf9d9c0a2056c9'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'

  app 'Proxifier.app'

  zap delete: [
                '~/Library/Application Support/Proxifier',
                '~/Library/Caches/com.initex.proxifier.macosx',
                '~/Library/Preferences/com.initex.proxifier.macosx.plist',
                '~/Library/Saved Application State/com.initex.proxifier.macosx.savedState',
              ]
end
