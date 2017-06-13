cask 'hyper' do
  version '1.3.3'
  sha256 'b99e11d38f389bc759ce14d00b5665e4dceb4da05d2a563e7ba20d2cd2a71d53'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '7fd30ef5c924d11ad85525e7be3dd41d4b821ae7bd675771fd97d95067357a36'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap delete: [
                '~/.hyper.js',
                '~/.hyper_plugins',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl',
                '~/Library/Application Support/Hyper',
                '~/Library/Caches/co.zeit.hyper',
                '~/Library/Caches/co.zeit.hyper.ShipIt',
                '~/Library/Preferences/co.zeit.hyper.plist',
                '~/Library/Preferences/co.zeit.hyper.helper.plist',
                '~/Library/Saved Application State/co.zeit.hyper.savedState',
              ]
end
