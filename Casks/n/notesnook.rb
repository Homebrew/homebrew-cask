cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.1"
  sha256 arm:   "44b84fe7603196bd0a93d5eff614dd6a6a21cefd91fd55d0a30c50e724e65669",
         intel: "82c150845d77c33a36ea6f66841cc581856f0a3aac65714a0a342f83e721e28d"

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
