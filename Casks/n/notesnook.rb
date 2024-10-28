cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.19"
  sha256 arm:   "88fdd777fa2d60457053ce54d9d945717f508c3ab609b22a1e6703615c73ab32",
         intel: "59c884a6dd2f52e5d2e9879991bc851aa41aa2d5e86645a79249f907afc95f01"

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
