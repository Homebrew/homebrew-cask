cask "marsedit" do
  version "5.4.4"
  sha256 "8b15ce1e0648e8b2ebdd3de33129597c572deb04bbba1d0598a51fba22e41540"

  url "https://redsweater.com/marsedit/MarsEdit#{version}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "MarsEdit.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.marsedit*",
    "~/Library/Caches/com.apple.helpd/Generated/com.red-sweater.marsedit*",
    "~/Library/Containers/com.red-sweater.marsedit*",
    "~/Library/Group Containers/493CVA9A35.com.red-sweater",
  ]
end
