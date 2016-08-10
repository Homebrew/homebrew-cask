cask 'hyperterm' do
  version '0.7.1'
  sha256 '7add5e9f73c70a536b9a715c10410a45552f4586c90f75c0b07e8404e00f80b8'

  # github.com/zeit/hyperterm was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyperterm/releases/download/v#{version}/hyperterm-#{version}-mac.zip"
  appcast 'https://github.com/zeit/hyperterm/releases.atom',
          checkpoint: 'e7e0d1747b8cfab1df69eedf8e362aeccba19771ad78e6ba00d9c5f25f795f20'
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
