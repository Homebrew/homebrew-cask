cask 'deltawalker' do
  version '2.3.2'
  sha256 '03d3e5c7ccc8252dbc12b15d86e647d1e71f59396deb33085b45169d20ea4d28'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}.dmg"
  name 'DeltaWalker'
  homepage 'https://www.deltawalker.com/'

  depends_on macos: '>= :tiger'

  app 'DeltaWalker.app'

  zap delete: [
                '~/Library/Caches/com.deltopia.DeltaWalker',
                '~/Library/Containers/com.deltopia.DeltaWalker',
                '~/Library/Preferences/com.deltopia.DeltaWalker.plist',
                '~/Library/Saved Application State/com.deltopia.DeltaWalker.savedState',
              ]
end
