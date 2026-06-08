cask "rcloneview" do
  version "1.4.33"
  sha256 "7548cace45244ee8b62694d4e1cdc45ec3c654fc8077d295b7c55dc7ba10798c"

  url "https://downloads.bdrive.com/rclone_view/builds/RcloneView-#{version}.dmg",
      verified: "downloads.bdrive.com/rclone_view/"
  name "RcloneView"
  desc "GUI for rclone"
  homepage "https://rcloneview.com/"

  # A sparkle feed is present in the appcast, but is not currently functional
  # https://rcloneview.com/appcast/appcast-mac.xml
  livecheck do
    url "https://rcloneview.com/src/download"
    regex(/href=.*RcloneView[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "RcloneView.app"

  zap trash: [
    "~/Library/Application Support/com.bdrive.rcloneView",
    "~/Library/HTTPStorages/com.bdrive.rcloneView",
    "~/Library/Preferences/com.bdrive.rcloneView.plist",
  ]
end
