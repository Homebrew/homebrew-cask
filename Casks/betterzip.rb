cask "betterzip" do
  version "5.1.1"
  sha256 "9960a258657f3700f06f6f5a6b8d3c0bbde221aefaec34db07edb2187d3eb803"

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
