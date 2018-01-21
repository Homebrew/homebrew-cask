cask 'storyboarder' do
  version '1.3.0'
  sha256 '1a73f734b9a64a5387637d131145620f96e2bc52a2b78d6de80d3f9b210aa593'

  # github.com/wonderunit/storyboarder was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/storyboarder-#{version}-mac.zip"
  appcast 'https://github.com/wonderunit/storyboarder/releases.atom',
          checkpoint: 'afa62955c90a0fb627cc3cd3d21dcc36875e55f337ba19705fec70390c071e6c'
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
