cask "marsedit" do
  version "5.0.3,10709"
  sha256 "655c981931f695caf8dbeab396c9dc32b9cebf54a3bf44728eec6bae1de528ae"

  url "https://redsweater.com/marsedit/MarsEdit#{version.csv.first}.zip"
  name "MarsEdit"
  desc "Tool to write, preview and publish blogs"
  homepage "https://redsweater.com/marsedit/"

  livecheck do
    url "https://redsweater.com/marsedit/appcast#{version.major}.php"
    strategy :sparkle
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
