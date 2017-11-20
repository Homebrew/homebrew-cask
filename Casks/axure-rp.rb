cask 'axure-rp' do
  version '8.1.0.3366'
  sha256 '6c06a99228c0d5f04ebd70df6380b7508a8734c770e8d1bcbd857366ba7fa8d4'

  # axure.cachefly.net was verified as official when first introduced to the cask
  url 'https://axure.cachefly.net/AxureRP-Setup.dmg'
  appcast 'https://www.axure.com/release-history',
          checkpoint: '924e7c70b6f093e20f46f01824f1cbcc0e0c27d7f1a0ada4a85264a961f3405c'
  name 'Axure RP'
  homepage 'https://www.axure.com/'

  app "Axure RP #{version.major}.app"

  zap trash: [
               "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
               "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl*",
             ]
end
