cask 'proxifier' do
  version '2.21'
  sha256 '139887d2f4468af222af2b8a1b806169918f359113547a918078792b47471540'

  url 'https://www.proxifier.com/distr/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/mac/new.htm',
          checkpoint: '602cadf245901c60c6fd178f80f5e0771ce290a1b03446f1d949ed310f7b97a2'
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
