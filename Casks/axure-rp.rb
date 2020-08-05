cask "axure-rp" do
  version "9.0.0.3712"
  sha256 "8cb3a34076160efeb0142aee1855d945f0281728475a390fe276a8a504cde44d"

  # axure.cachefly.net/ was verified as official when first introduced to the cask
  url "https://axure.cachefly.net/AxureRP-Setup.dmg"
  appcast "https://www.axure.com/release-history"
  name "Axure RP"
  homepage "https://www.axure.com/"

  app "Axure RP #{version.major}.app"

  zap trash: [
    "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
    "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl*",
  ]
end
