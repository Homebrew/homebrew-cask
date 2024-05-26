cask "querious" do
  version "4.0.13"
  sha256 "9258a667399d3f887e205022b906c4517340108b1d0d835ffb3fad527191ae72"

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
