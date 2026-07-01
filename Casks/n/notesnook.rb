cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.2"
  sha256 arm:   "300a9e515ab2dcc21ccc1033ec37a4d677892662c205625ce1e98a1dfa99ccf9",
         intel: "7177f56243a8486ab55f60a330ade272eae7a0469499f1aebc821c2d5f5600f1"

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
  depends_on :macos

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
