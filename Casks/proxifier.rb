cask 'proxifier' do
  version '2.21'
  sha256 '139887d2f4468af222af2b8a1b806169918f359113547a918078792b47471540'

  url 'https://www.proxifier.com/distr/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/distr/last_versions/ProxifierMac.txt',
          checkpoint: '5c316b2043de3d51392e3b60fc0894167c9b2c8abb5d1fe91ccf9d9c0a2056c9'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'

  app 'Proxifier.app'

  zap delete: [
                '~/Library/Caches/com.initex.proxifier.macosx',
                '~/Library/Saved Application State/com.initex.proxifier.macosx.savedState',
                '~/Library/Logs/Proxifier',
              ],
      trash:  [
                '~/Library/Application Support/Proxifier',
                '~/Library/Preferences/com.initex.proxifier.macosx.plist',
              ]
end
