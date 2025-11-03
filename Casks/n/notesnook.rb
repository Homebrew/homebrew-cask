cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.4"
  sha256 arm:   "de52644560104666601794335f14b235b5b4d2cdc626e0c76d51cfe25b18b624",
         intel: "73425380551b5d471138adbb724d5916fdd199b0c013df0c061757a960de3aad"

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
