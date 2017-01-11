cask 'hyper' do
  version '1.1.0'
  sha256 '7bcc3c437e66ef183a9063a6586e7d301b1cd584a8212d58c984cd26be6d7804'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '24cd4e7b79b778639476f323052420982f832b3b67745e5f417dc4320f5c1ff8'
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
