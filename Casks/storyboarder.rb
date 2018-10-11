cask 'storyboarder' do
  version '1.9.0'
  sha256 'c1392d8c4090fd112e03e4224fb5b0b7015d4593e14d374740b822d1a94a9e25'

  # github.com/wonderunit/storyboarder was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/storyboarder-#{version}-mac.zip"
  appcast 'https://github.com/wonderunit/storyboarder/releases.atom'
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
