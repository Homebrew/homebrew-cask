cask "dropbox-capture" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "80.0.5"

  if Hardware::CPU.intel?
    sha256 "c25a7ccc3f9cf9d8eb7912d4eb2719d65fe3d6105fd92bc846297209812f5e2b"
  else
    sha256 "2715e3f810650615759707f51071a265dc85112d556adc29d097c7a4380fa2df"
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
