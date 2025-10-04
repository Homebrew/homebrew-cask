cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "a3d5edb45ebf04a2b79cef9d774951e3d68bd40ba7bda2913e5c2c0d56b3b10c",
         intel: "d2d90ea6efb51584d46370bdde4af6cfe9aad9fab7c968913414e07cc8de689c"

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
