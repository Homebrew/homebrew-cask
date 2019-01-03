cask 'slite' do
  version '1.0.17'
  sha256 'db0f53b3718dc8e832f14e02cc3fa480dd7d48698abec4508609bdb063e7c933'

  # storage.googleapis.com/slite-desktop was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/slite-desktop/mac/Slite-#{version}.dmg"
  name 'Slite'
  homepage 'https://slite.com/'

  app 'Slite.app'

  zap trash: [
               '~/Library/Application Support/Slite',
               '~/Library/Caches/com.slite.desktop',
               '~/Library/Caches/com.slite.desktop.ShipIt',
               '~/Library/Preferences/com.slite.desktop.helper.plist',
               '~/Library/Preferences/com.slite.desktop.plist',
               '~/Library/Saved Application State/com.slite.desktop.savedState',
             ]
end
