cask "rcloneview" do
  version "0.8.364"
  sha256 "5c5f9575989d49eead0a19309bce93eb3f656ce4ea229d56ffa415b905d31c7a"

  url "https://downloads.bdrive.com/rclone_view/builds/RcloneView-#{version}.dmg",
      verified: "downloads.bdrive.com/rclone_view/"
  name "RcloneView"
  desc "GUI for rclone"
  homepage "https://rcloneview.com/"

  livecheck do
    url "https://rcloneview.com/appcast/appcast-mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "RcloneView.app"

  zap trash: [
    "~/Library/Application Support/com.bdrive.rcloneView",
    "~/Library/HTTPStorages/com.bdrive.rcloneView",
    "~/Library/Preferences/com.bdrive.rcloneView.plist",
  ]
end
