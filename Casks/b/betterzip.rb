cask "betterzip" do
  version "5.4.2"
  sha256 "1009e2283222fd5cfdf527b5e78559addf143c54902001b678dd38135cebca64"

  url "https://macitbetter.com/dl/BetterZip-#{version}.zip"
  name "BetterZip"
  desc "Utility to create and modify archives"
  homepage "https://macitbetter.com/"

  livecheck do
    url "https://macitbetter.com/BetterZip.zip"
    strategy :header_match
  end

  auto_updates true

  app "BetterZip.app"

  zap trash: [
    "~/Library/Application Scripts/79RR9LPM2N.group.com.macitbetter.betterzip",
    "~/Library/Application Scripts/79RR9LPM2N.group.com.macitbetter.betterzip-setapp",
    "~/Library/Application Scripts/com.macitbetter.betterzip.Compress-with-BetterZip",
    "~/Library/Application Scripts/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Application Scripts/com.macitbetter.betterzip.Quick-Look-Extension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.macitbetter.betterzip.sfl*",
    "~/Library/Application Support/com.macitbetter.betterzip",
    "~/Library/Caches/com.apple.helpd/Generated/com.macitbetter.betterzip.help*",
    "~/Library/Caches/com.macitbetter.betterzip",
    "~/Library/Containers/com.macitbetter.betterzip.Compress-with-BetterZip",
    "~/Library/Containers/com.macitbetter.betterzip.findersyncextension",
    "~/Library/Containers/com.macitbetter.betterzip.Quick-Look-Extension",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip",
    "~/Library/Group Containers/79RR9LPM2N.group.com.macitbetter.betterzip-setapp",
    "~/Library/HTTPStorages/com.macitbetter.betterzip",
    "~/Library/Preferences/com.macitbetter.betterzip.plist",
    "~/Library/Saved Application State/com.macitbetter.betterzip.savedState",
  ]
end
