cask 'proxifier' do
  version '2.19'
  sha256 'dcefba17e07a11d2ce8c12f949e9c59f80994588f3910516b58669e9e740854c'

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
