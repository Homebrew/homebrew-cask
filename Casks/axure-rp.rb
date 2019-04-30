cask 'axure-rp' do
  version '9.0.0.3646'
  sha256 '39df9c414cc42292de88fcde1b11b7b7705c1290b57b0cecce8abf855109f48c'

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
