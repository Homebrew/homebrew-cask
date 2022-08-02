cask "dropbox-capture" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "81.0.10"

  if Hardware::CPU.intel?
    sha256 "bfa14f4e17bf7a7ce8e9c14352c290e461d45ff8936e80c4e87717616a17c28a"
  else
    sha256 "d2c116ee2d2e5c6ad25f667660c2cb6caf5c1712c68d60ca7410f912e2598c7d"
  end

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
