cask 'axure-rp' do
  version '8.1.0.3355'
  sha256 '41ec27f44f5a0a506a6e4cf36651e1ca993c956fb8b279ae91ede7614b344911'

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  appcast 'https://www.axure.com/release-history',
          checkpoint: 'c3784b0b0927342d958b9b5dab989a86b383fab3619917d0068c2f5a5750ace1'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap delete: [
                "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
                "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl",
              ]
end
