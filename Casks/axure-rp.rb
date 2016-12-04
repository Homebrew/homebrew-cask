cask 'axure-rp' do
  version '8.0.0.3322'
  sha256 'a6a1b836d602693616addbebe9c2bad36f258e256dadb611a685a17813fe643b'

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap delete: [
                "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
                "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
                "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl",
              ]
end
