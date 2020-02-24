cask 'deltawalker' do
  version '2.5.5'
  sha256 '664f74cf170fcce7427ae734c33c7366b71b6d594fb5e28bd28d0d4c0d360bf1'

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
