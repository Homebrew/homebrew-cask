cask "axure-rp" do
  version "9.0.0.3714"
  sha256 "e298e722dc60cdb0dda1eeb2f75b2df179c8ee45733518080d0ac890447f2d7c"

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
