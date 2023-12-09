cask "marsedit" do
  version "5.1.1"
  sha256 "36a7c7dec1a0711c9e8a46277fa60ec3632e5155297e2858fe0432220f08c396"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.marsedit5.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.red-sweater.marsedit5.help*",
    "~/Library/Containers/com.red-sweater.marsedit5.*",
    "~/Library/Group Containers/493CVA9A35.com.red-sweater",
  ]
end
