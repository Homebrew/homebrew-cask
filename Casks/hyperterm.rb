cask 'hyperterm' do
  version '0.4.5'
  sha256 '06b9ebf6dbc8c3cc277b3fede2a7945778edce950586bbd87745d5d9a370601a'

  # github.com/zeit/hyperterm was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyperterm/releases/download/#{version}/hyperterm-macos-x64-#{version}.zip"
  appcast 'https://github.com/zeit/hyperterm/releases.atom',
          checkpoint: 'b20d3078e20ad18ec51c9edb1fc35a6c283d08787a2f6728d0eed77c53545a5b'
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
