cask "betterzip" do
  version "5.3"
  sha256 "b4ac2077696be07696b586cadfae6dc71b90ce167b0ed1dd03f198ea9a0ae527"

  url "https://macitbetter.s3.amazonaws.com/BetterZip-#{version}.zip",
      verified: "macitbetter.s3.amazonaws.com/"
  name "BetterZip"
  desc "Utility to create and modify archives"
  homepage "https://macitbetter.com/"

  livecheck do
    url "https://macitbetter.com/BetterZip.zip"
    strategy :header_match
  end

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
