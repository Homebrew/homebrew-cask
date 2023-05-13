cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.10"
  sha256 arm:   "1eb98e21f274fd327f1b6ce5acc352482396eae408676aa5a1dac2652257ebc3",
         intel: "5ec7ac060971b76d3fc9bac51a0b90a76584a25f972980d2ee78339862a405bd"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
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
