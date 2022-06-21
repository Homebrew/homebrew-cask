cask "dropbox-capture" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "79.0.7"

  if Hardware::CPU.intel?
    sha256 "3eabe7eb12494cba7f16820485a53f8b94ca6d4eac4c301798839e0f1c2ac4df"
  else
    sha256 "98ea3e15953808a51c8873afd6dd81e8f6030308e0e2047e07810d5822455584"
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
