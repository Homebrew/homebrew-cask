cask 'hyper' do
  version '0.8.1'
  sha256 '9b39e2dc710845db99ad2002e107c0c7754b7718c6cc41c8793435e9d18c3e03'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '9cb83c950deb477b1d9c95ebecbdaba3637db29007b2ff279ec4301147426b49'
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
