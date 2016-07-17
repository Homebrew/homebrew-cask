cask 'hyperterm' do
  version '0.6.0'
  sha256 '279a31f15e40b812b50bb9e780699bea4561d069569a848d14ca7a082407f80c'

  # github.com/zeit/hyperterm was verified as official when first introduced to the cask
  url "https://github.com/zeit/hyperterm/releases/download/#{version}/hyperterm-macos-x64-#{version}.zip"
  appcast 'https://github.com/zeit/hyperterm/releases.atom',
          checkpoint: 'aed09c86c110b7a6c917da84c0add9ca600f6be11d76690f11476635e07cd7e4'
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
