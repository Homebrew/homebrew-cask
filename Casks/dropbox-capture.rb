cask "dropbox-capture" do
  arch arm: "arm64", intel: "x86_64"

  version "83.0.4"
  sha256 arm:   "5cbf5e07302ad6306b3462a9bbf5b12332d7989e0fb548c2d9ebc75dfd2f2cfc",
         intel: "1b0b79a811be9b3545433fcf0803187905883a57ec82605eecae4ac0359ee3e4"

  url "https://edge.dropboxstatic.com/dbx-releng/products/dropbox-capture/#{version}/mac.#{arch}/Dropbox_Capture.dmg",
      verified: "edge.dropboxstatic.com/dbx-releng/products/dropbox-capture/"
  name "Dropbox Capture"
  desc "Share your work and ideas with video messages and screenshots"
  homepage "https://dropbox.com/capture/"

  livecheck do
    url "https://dropbox.com/capture/download"
    strategy :header_match
  end

  auto_updates true
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
