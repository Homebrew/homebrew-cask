cask "marsedit" do
  version "5.0.5"
  sha256 "00150c01b8bf252ed6c1f4401b413ec985f128b831682e6585574aa57409664a"

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
