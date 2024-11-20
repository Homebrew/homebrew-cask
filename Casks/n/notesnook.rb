cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.21"
  sha256 arm:   "e2e8057d70c0cf7344cfa100a5449e6103b3b8ee608d5c5d41b3f9fad382b725",
         intel: "512f2637974cb8d813433798b837f7eac1c1ed6f7b5f72e8581b32a1e2489d7b"

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
