cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.2"
  sha256 arm:   "bd46be3a48990615a15cf850061b291f49f02e3ccd79d02f7ac28311a427e2de",
         intel: "afee17383ebb42eac21c7bc7e37b178eb4f3febad89b17acfb2559e5206e8440"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
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
