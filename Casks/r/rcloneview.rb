cask "rcloneview" do
  version "1.1.533"
  sha256 "0c20c743a8fb58ba7b64b7dbb653bb3a4faeb57e46185a8d603f3476c622ee5d"

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
