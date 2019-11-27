cask 'deltawalker' do
  version '2.5.5'
  sha256 'c812738e1c6b8e1fd128f17aee0d5650aa8a3ad254465034ef5a6bcb87d27cf8'

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
