cask 'hyper' do
  version '1.4.8'
  sha256 'a8e48a5f7a810ff67a4524491f360d622284f76058344baab909b21352df8985'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: 'e9ffa6b15e4033dacd8a4fe8fdfb8de8cdec5354cdd35a61087fee5af64b48f4'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl',
                '~/Library/Caches/co.zeit.hyper',
                '~/Library/Caches/co.zeit.hyper.ShipIt',
                '~/Library/Saved Application State/co.zeit.hyper.savedState',
              ],
      trash:  [
                '~/.hyper.js',
                '~/.hyper_plugins',
                '~/Library/Application Support/Hyper',
                '~/Library/Preferences/co.zeit.hyper.plist',
                '~/Library/Preferences/co.zeit.hyper.helper.plist',
              ]
end
