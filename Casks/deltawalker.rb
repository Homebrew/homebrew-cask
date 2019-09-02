cask 'deltawalker' do
  version '2.5.1'
  sha256 'fa25263ad38e2a61334fee88603e0b67ba098147376d7812dff1aeb6cc2f9e64'

  # deltawalker.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://deltawalker.s3.amazonaws.com/DeltaWalker-#{version}.dmg"
  appcast 'https://www.deltawalker.com/assets/js/main.js'
  name 'DeltaWalker'
  homepage 'https://www.deltawalker.com/'

  app 'DeltaWalker.app'

  zap trash: [
               '~/Library/Caches/com.deltopia.DeltaWalker',
               '~/Library/Containers/com.deltopia.DeltaWalker',
               '~/Library/Preferences/com.deltopia.DeltaWalker.plist',
               '~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState',
             ]
end
