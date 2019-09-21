cask 'axure-rp' do
  version '9.0.0.3662'
  sha256 'ceae39db4c6912d3bcbd8dbe89001af8fa6236e081e7145e2fc070115a30f2c1'

  # axure.cachefly.net was verified as official when first introduced to the cask
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
