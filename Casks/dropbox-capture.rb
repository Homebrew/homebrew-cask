cask "dropbox-capture" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "78.0.2"

  if Hardware::CPU.intel?
    sha256 "de8d64f5a3c3057796d23f9e1804ab9495f451d9b767fa0359cd8663670554a9"
  else
    sha256 "2fe7b0e743cf706d88c2045b8d77624d1bdc4d86229aaa1eb7118646b8740aa1"
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
