cask "querious" do
  version "4.0.11"
  sha256 "f6ace8c20ebbe691a98ab8ad07b0c0b976844713ccb1a1696c56838a970d5132"

  url "https://www.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  name "Querious #{version.major}"
  desc "MySQL and compatible databases tool"
  homepage "https://www.araelium.com/querious/"

  livecheck do
    url "https://arweb-assets.s3.amazonaws.com/downloads/querious/updates.json"
    regex(/Queriousv?(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Querious.app"

  zap trash: [
    "~/Library/Application Support/Querious",
    "~/Library/Caches/com.apple.helpd/Generated/com.araeliumgroup.querious.help*",
    "~/Library/Caches/com.araeliumgroup.querious",
    "~/Library/HTTPStorages/com.araeliumgroup.querious",
    "~/Library/Logs/Querious.log",
    "~/Library/Preferences/com.araeliumgroup.querious.plist",
    "~/Library/Saved Application State/com.araeliumgroup.querious.savedState",
  ]
end
