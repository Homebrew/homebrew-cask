cask "querious" do
  version "4.0.4"
  sha256 "d93ddbbd8ca4206b88390e30ef474a70c80b5caba5306e02a56924787476df2a"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  name "Querious #{version.major}"
  desc "MySQL and compatible databases tool"
  homepage "https://www.araelium.com/querious/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
    regex(/Queriousv?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Querious.app"

  zap trash: [
    "~/Library/Application Support/Querious",
    "~/Library/Caches/com.apple.helpd/Generated/com.araeliumgroup.querious.help*#{version}",
    "~/Library/Caches/com.araeliumgroup.querious",
    "~/Library/HTTPStorages/com.araeliumgroup.querious",
    "~/Library/Logs/Querious.log",
    "~/Library/Preferences/com.araeliumgroup.querious.plist",
    "~/Library/Saved Application State/com.araeliumgroup.querious.savedState",
  ]
end
