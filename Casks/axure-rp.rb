cask "axure-rp" do
  version "9.0.0.3721"
  sha256 "389e79d939f2791049cc899b0e2df286f160a8cd1822cbb6be9fc07e18c07943"

  # axure.cachefly.net/ was verified as official when first introduced to the cask
  url "https://axure.cachefly.net/AxureRP-Setup.dmg"
  appcast "https://www.axure.com/release-history"
  name "Axure RP"
  desc "Planning and prototyping tool for developers"
  homepage "https://www.axure.com/"

  app "Axure RP #{version.major}.app"

  zap trash: [
    "~/Library/Preferences/com.axure.AxureRP#{version.major}.plist",
    "~/Library/Saved Application State/com.axure.AxureRP#{version.major}.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.axure.axurerp#{version.major}.sfl*",
  ]
end
