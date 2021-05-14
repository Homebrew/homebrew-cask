cask "betterzip" do
  version "5.1"
  sha256 "97cb0453593c53ceb13a469e7d4bc7528d8712f7e83515cb5dfc6945792ec915"

  url "https://macitbetter.s3.amazonaws.com/BetterZip-#{version}.zip",
      verified: "macitbetter.s3.amazonaws.com/"
  appcast "https://macitbetter.com/BetterZip#{version.major}.rss"
  name "BetterZip"
  desc "Utility to create and modify archives"
  homepage "https://macitbetter.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "BetterZip.app"

  zap trash: [
    "~/Library/Application Scripts/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*",
    "~/Library/Application Support/com.macitbetter.betterzip",
    "~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*",
    "~/Library/Caches/com.macitbetter.betterzip",
    "~/Library/Containers/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp",
    "~/Library/Preferences/com.macitbetter.betterzip.plist",
    "~/Library/Saved Application State/com.macitbetter.betterzip.savedState",
  ]
end
