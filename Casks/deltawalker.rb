cask 'deltawalker' do
  version '2.5.0'
  sha256 'e5b51a90058c161c452c30dcd5278477f04c1bc5d12ad6fbff94b52d4cda80db'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}.dmg"
  appcast 'https://www.deltawalker.com/new-and-noteworthy'
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
