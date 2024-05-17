cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.6"
  sha256 arm:   "266eeb65612c32ca632ab30e0c63c11893f42397c5dda8fe59774136c9afe23c",
         intel: "03445b9ba6e8608d81dcd7be15ccc0337aa6b4cd8ac0d583f82d8dd2c81646d8"

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
