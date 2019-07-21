cask 'storyboarder' do
  version '1.13.0'
  sha256 'ac9daac2c3b22f210367d264f143f9e416398ff157ff543c91b567665ecf6ca4'

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
