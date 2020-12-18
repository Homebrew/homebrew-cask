cask "axure-rp" do
  version "9.0.0.3723"
  sha256 :no_check

  url "https://axure.cachefly.net/AxureRP-Setup.dmg",
      verified: "axure.cachefly.net/"
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
