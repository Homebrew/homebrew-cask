cask "dropbox-capture" do
  arch arm: "arm64", intel: "x86_64"

  version "113.1.0"
  sha256 arm:   "a27b12d9810a3a237d4496c7eeaf3bb188e53b4eba9bea8bd63dac681b47afd0",
         intel: "d78e10834baa0fa4f39e91a4d399081d45a9a7304066b51d930c09085b274a8f"

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
