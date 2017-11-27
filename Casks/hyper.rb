cask 'hyper' do
  version '2.1.1'
  sha256 '5672e408cfe07008ac4eb1c01b86251837b9b743434a14b29ef372a4ef9f6148'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: 'e9ffa6b15e4033dacd8a4fe8fdfb8de8cdec5354cdd35a61087fee5af64b48f4'
  name 'Hyper'
  homepage 'https://hyper.is/'

  app 'Hyper.app'

  zap trash: [
               '~/.hyper.js',
               '~/.hyper_plugins',
               '~/Library/Application Support/Hyper',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyper.sfl*',
               '~/Library/Caches/co.zeit.hyper',
               '~/Library/Caches/co.zeit.hyper.ShipIt',
               '~/Library/Preferences/co.zeit.hyper.plist',
               '~/Library/Preferences/co.zeit.hyper.helper.plist',
               '~/Library/Saved Application State/co.zeit.hyper.savedState',
             ]
end
