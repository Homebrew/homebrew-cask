cask 'storyboarder' do
  version '1.9.2'
  sha256 'd7f06c55c1c61de9f1620b34807f337a4c053ff0ec9efb1d980375d10fbcfe3b'

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
