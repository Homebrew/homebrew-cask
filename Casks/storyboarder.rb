cask 'storyboarder' do
  version '1.5.1'
  sha256 'eb8f9c459dc35609a9c0bc8e50d74724c88932634c9607e1d0fca0af80e1e9f3'

  # github.com/wonderunit/storyboarder was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/storyboarder-#{version}-mac.zip"
  appcast 'https://github.com/wonderunit/storyboarder/releases.atom',
          checkpoint: 'f70635447c7fbb8603cdd234da7854d99df097743587a80f0c8d5642baf87d41'
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
