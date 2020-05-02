cask 'axure-rp' do
  version '9.0.0.3696'
  sha256 'b156d11c5302889b8827ce1cd29305942170f81ff64e8d2c1bda0f7ddf7ef61c'

  # axure.cachefly.net/ was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  appcast 'https://www.axure.com/release-history'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap trash: [
               "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
               "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl*",
             ]
end
