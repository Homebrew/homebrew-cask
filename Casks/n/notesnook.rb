cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "0dbc8a8b48f5ae248bcad0330829dcf7d15e8f6cce1f9d405de4cc6e5221e635",
         intel: "13d122833c96aabf6a399e4cf30bce241068eae50e8ce05aa61de538d34544c1"

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
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
