cask 'deltawalker' do
  version '2.3.1'
  sha256 '237d79ec8617a214c3616521795a76aecd775570a6b1e82a19b4f5b9bddb4a5b'

  # amazonaws.com/deltawalker was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/deltawalker/DeltaWalker-#{version}_64.dmg"
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
