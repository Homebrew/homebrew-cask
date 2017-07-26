cask 'axure-rp' do
  version '8.0.0.3338'
  sha256 '0a24538b3f0e1e96e668d6be6b9d74d7aa5bb51e50216542031b63f131ba0b5a'

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  appcast 'https://www.axure.com/release-history',
          checkpoint: '3b87a8072a44e2f42db6c4727ef52510ffe452071af6c82695e0d42c1f2ab96e'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap delete: [
                "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
                "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl",
              ]
end
