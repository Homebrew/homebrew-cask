cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.11"
  sha256 arm:   "cb357922a5a0d54227ff78be2c4feaf2aa1489ec40fea7c0336bdb4fc71a50ae",
         intel: "9a6e746471d00e637b7a0b334ac78e9119dcbe8ed3a2fa86caa13a6608aac451"

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
