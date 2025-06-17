cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "15ebcbddcbb6ca19467427b73f27bb11fe2a50e78275ffcbab79e208bfca8f85",
         intel: "07460b17d1d20a18c9c6c291ad5d357fb132eb61a719b27e409a1fbf65b30d02"

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
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
