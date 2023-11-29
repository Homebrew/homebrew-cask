cask "marsedit" do
  version "5.1"
  sha256 "db37368b64d2fc726ea6b289a0516f05a4a56700825cc604e61f6f02b5532bbe"

  url "https://redsweater.com/marsedit/MarsEdit#{version}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "MarsEdit.app"

  zap trash: [
    "~/Library/Application Scripts/com.red-sweater.*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.marsedit5.sfl2",
    "~/Library/Caches/com.apple.helpd/Generated/com.red-sweater.marsedit5.help*",
    "~/Library/Containers/com.red-sweater.marsedit5.*",
    "~/Library/Group Containers/493CVA9A35.com.red-sweater",
  ]
end
