cask 'storyboarder' do
  version '1.4.1'
  sha256 'd8f28c6ae5d99a3af9577a146f89f6ea239d9f68530af5b5b490755d7f4de96b'

  # github.com/wonderunit/storyboarder was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/storyboarder-#{version}-mac.zip"
  appcast 'https://github.com/wonderunit/storyboarder/releases.atom',
          checkpoint: '1d28baf0905e167e6e87e7a1619d605cbfe0bb3588d2e5884a334b41b623f9ca'
  name 'Wonder Unit Storyboarder'
  homepage 'https://wonderunit.com/storyboarder/'

  app 'Storyboarder.app'

  zap trash: [
               '~/Library/Application Support/Storyboarder',
               '~/Library/Preferences/com.wonderunit.storyboarder.helper.plist',
               '~/Library/Preferences/com.wonderunit.storyboarder.plist',
               '~/Library/Saved Application State/com.wonderunit.storyboarder.savedState',
             ]
end
