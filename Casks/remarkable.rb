cask "remarkable" do
  version "2.12.2.251"
  sha256 "9b4c44f6133c9f9f2ecce3fc123a19cf64038a6ec06c68c947751d4cf0553f03"

  url "https://downloads.remarkable.com/desktop/production/mac/reMarkable-#{version}.dmg"
  name "Remarkable"
  desc "View, Screen Share, organize, import, and download files to a reMarkable device"
  homepage "https://remarkable.com/"

  livecheck do
    url "https://get-updates.cloud.remarkable.engineering/sparkle/reMarkableMacOs/Prod/appcast.xml"
    regex(/reMarkable-(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "reMarkable.app"

  zap trash: [
    "~/Library/Application Support/remarkable",
    "~/Library/Caches/com.remarkable.desktop",
    "~/Library/Caches/remarkable",
    "~/Library/Preferences/com.remarkable.desktop.plist",
    "~/Library/Saved Application State/com.remarkable.desktop.savedState",
  ]
end
