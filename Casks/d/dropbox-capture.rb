cask "dropbox-capture" do
  arch arm: "arm64", intel: "x86_64"

  version "115.1.0"
  sha256 arm:   "e834c331268461f39fa777ebf54ccd131359ffd12308159bc94ec8987969c178",
         intel: "51a2188810bb299bba8de16687c7b2bca22e00279c9f74b7e92e7252bc0984eb"

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
    "~/Library/Caches/com.electron.dropbox-capture",
    "~/Library/Caches/com.electron.dropbox-capture.ShipIt",
    "~/Library/Caches/Dropbox-Capture",
    "~/Library/Logs/Dropbox-Capture",
    "~/Library/Preferences/com.electron.dropbox-capture.plist",
  ]
end
