cask "remarkable" do
  version "2.10.3.179"
  sha256 "57579e8de8cf4d48f6c002d36878df4427ba113034eb2d783c0c26705056849e"

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
