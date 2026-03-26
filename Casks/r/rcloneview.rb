cask "rcloneview" do
  version "1.4.17"
  sha256 "9ab7884f4f97003ff5aa549d315bef64021bcc3b409c2688b73bfc5652a371ca"

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
