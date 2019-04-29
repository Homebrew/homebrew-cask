cask 'axure-rp' do
  version '9.0.0.3646'
  sha256 '66c98ef8db416b490cf3b43c21bc8074fbc3671fcbc82cfd29a7ff00c7802947'

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
