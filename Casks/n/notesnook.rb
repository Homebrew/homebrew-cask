cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.8"
  sha256 arm:   "3f5c6a30518041056aefa3b5453a7ede466dcccd711af494a5b922eb82938e2f",
         intel: "e4e6e5dd8bde331dfcb1d2c8191cf72ea8b79a5a2bb93c87ff732c34d5f4dd30"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/api/v1/releases/darwin/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
