cask "marsedit" do
  version "5.3.12"
  sha256 "84fe6cece04320cec9fccfece4219842ef8656a3ccb472a916841b604a9bcbf9"

  url "https://redsweater.com/marsedit/MarsEdit#{version}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "MarsEdit.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.marsedit*",
    "~/Library/Caches/com.apple.helpd/Generated/com.red-sweater.marsedit*",
    "~/Library/Containers/com.red-sweater.marsedit*",
    "~/Library/Group Containers/493CVA9A35.com.red-sweater",
  ]
end
