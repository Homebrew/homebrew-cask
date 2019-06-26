cask 'storyboarder' do
  version '1.11.3'
  sha256 'e6db556d1ca720869db7419087fafa1a53fd35fe3b32afbe704d3fe65206200c'

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
