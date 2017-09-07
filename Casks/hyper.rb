cask 'hyper' do
  version '1.4.3'
  sha256 '61b964489e89c46473fab4e9c0a109c274be2336a360df06385871e241f87eab'

  # github.com/zeit/hyper was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyper/releases/download/#{version}/hyper-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyper/releases.atom',
          checkpoint: '97bc21b70bbb39dca1a7475b5c41d85373ca39c732b835afec459822c4379499'
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
