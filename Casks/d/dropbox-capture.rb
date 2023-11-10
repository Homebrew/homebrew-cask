cask "dropbox-capture" do
  arch arm: "arm64", intel: "x86_64"

  version "110.8.0"
  sha256 arm:   "2ea96220ab1a0209d1094bdf5d251e28c3fb9e6ad0e56050491f87dd7cdd8134",
         intel: "28ab45d51db85441a9210da14268d648dfeff75a94ed92bb8c0dd06c1d47871d"

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
