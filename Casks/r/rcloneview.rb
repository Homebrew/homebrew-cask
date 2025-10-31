cask "rcloneview" do
  version "1.0.476"
  sha256 "ba6d7c76ebbf991383b3e01d506e92a2e89b8054e8199e38ede7d89f209662a6"

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
  depends_on macos: ">= :ventura"

  app "RcloneView.app"

  zap trash: [
    "~/Library/Application Support/com.bdrive.rcloneView",
    "~/Library/HTTPStorages/com.bdrive.rcloneView",
    "~/Library/Preferences/com.bdrive.rcloneView.plist",
  ]
end
