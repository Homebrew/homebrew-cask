cask 'hyperterm' do
  version '0.8.1'
  sha256 '9b39e2dc710845db99ad2002e107c0c7754b7718c6cc41c8793435e9d18c3e03'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '5ccfd2a1a40f2a2c2ea39a554f122fc165a2815de4c2d864c11c2153981088e6'
  name 'Hyper'
  homepage 'https://hyper.is/'
  license :mit

  app 'Hyper.app'

  zap delete: [
                '~/.hyper.js',
                '~/.hyper_modules',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl',
                '~/Library/Application Support/Hyper',
                '~/Library/Caches/co.zeit.hyper',
                '~/Library/Caches/co.zeit.hyper.ShipIt',
                '~/Library/Preferences/co.zeit.hyper.plist',
                '~/Library/Preferences/co.zeit.hyper.helper.plist',
                '~/Library/Saved Application State/co.zeit.hyper.savedState',
              ]
end
