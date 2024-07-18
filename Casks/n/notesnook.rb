cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.11"
  sha256 arm:   "9eed0784d5c3629fb4fc6e59483600812d39eb3016ada079295a57d1f317d462",
         intel: "096dc5c1ac9a138c934f5b815885d6b97053e499bdce237aa4ca5a0e99718e22"

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
