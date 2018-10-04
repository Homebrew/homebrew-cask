cask 'deltawalker' do
  version '2.3.3'
  sha256 'a3c3b0af528c67467fe0df4445526f9bb5eee722e335b8ac117286fe83d0a705'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}.dmg"
  name 'DeltaWalker'
  homepage 'https://www.deltawalker.com/'

  depends_on macos: '>= :tiger'

  app 'DeltaWalker.app'

  zap trash: [
               '~/Library/Caches/com.deltopia.DeltaWalker',
               '~/Library/Containers/com.deltopia.DeltaWalker',
               '~/Library/Preferences/com.deltopia.DeltaWalker.plist',
               '~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState',
             ]
end
