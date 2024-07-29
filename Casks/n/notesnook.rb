cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.13"
  sha256 arm:   "942e7ce6f186082c1d1c13d1c49feb5495a8db62a1c76f39434cf28522069143",
         intel: "96d9aea3b90a2c9dd28d8a9a1681c3c18f8b6a93e22e0c10e468cb5b05ff93e7"

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
