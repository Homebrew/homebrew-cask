cask "dropbox-capture" do
  arch arm: "arm64", intel: "x86_64"

  version "116.3.0"
  sha256 arm:   "3ef49cad0ade501f75bea5ff3fc260d55f59664c2db93d48974279779c35f0d3",
         intel: "d70bf56723dd6b4d4d1acf2c4152e1ce6e88932fac59cbd9ebe8957c2880bc3d"

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
  depends_on macos: ">= :catalina"

  app "Dropbox Capture.app"

  zap trash: [
    "~/Library/Application Support/Dropbox-Capture",
    "~/Library/Caches/com.electron.dropbox-capture",
    "~/Library/Caches/com.electron.dropbox-capture.ShipIt",
    "~/Library/Caches/Dropbox-Capture",
    "~/Library/Logs/Dropbox-Capture",
    "~/Library/Preferences/com.electron.dropbox-capture.plist",
  ]
end
