cask 'storyboarder' do
  version '1.10.1'
  sha256 '3fd740d2fe729a35114264e75055608f31d02d3adf96d9742ebf901a7830609e'

  # github.com/wonderunit/storyboarder was verified as official when first introduced to the cask
  url "https://github.com/wonderunit/storyboarder/releases/download/v#{version}/Storyboarder-#{version}.dmg"
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
