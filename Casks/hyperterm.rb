cask 'hyperterm' do
  version '0.7.1'
  sha256 '7add5e9f73c70a536b9a715c10410a45552f4586c90f75c0b07e8404e00f80b8'

  # github.com/zeit/hyperterm was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyperterm/releases/download/#{version}/hyperterm-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyperterm/releases.atom',
          checkpoint: 'd7b5fed723c882c236104c7571d330fe81a4e17c5dc3a4793ac5829105c3933e'
  name 'HyperTerm'
  homepage 'https://hyperterm.org/'
  license :mit

  app 'HyperTerm.app'

  zap delete: [
                '~/.hyperterm.js',
                '~/.hyperterm_plugins',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.zeit.hyperterm.sfl',
                '~/Library/Application Support/HyperTerm',
                '~/Library/Caches/co.zeit.hyperterm',
                '~/Library/Caches/co.zeit.hyperterm.ShipIt',
                '~/Library/Preferences/co.zeit.hyperterm.plist',
                '~/Library/Preferences/co.zeit.hyperterm.helper.plist',
                '~/Library/Saved Application State/co.zeit.hyperterm.savedState',
              ]
end
