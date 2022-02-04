cask "dropbox-capture" do
  version "67.0.0"
  sha256 :no_check

  url "https://clientupdates.dropboxstatic.com/dbx-releng/dropbox_capture/mac/Dropbox_Capture.dmg",
      verified: "clientupdates.dropboxstatic.com/dbx-releng/dropbox_capture/mac/"
  name "Dropbox Capture"
  desc "Share your work and ideas with video messages and screenshots"
  homepage "https://dropbox.com/capture/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Dropbox Capture.app"

  zap trash: [
    "~/Library/Application Support/Dropbox-Capture",
    "~/Library/Caches/Dropbox-Capture",
    "~/Library/Caches/com.electron.dropbox-capture",
    "~/Library/Caches/com.electron.dropbox-capture.ShipIt",
    "~/Library/Logs/Dropbox-Capture",
    "~/Library/Preferences/com.electron.dropbox-capture.plist",
  ]
end
