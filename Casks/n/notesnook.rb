cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.7"
  sha256 arm:   "69916269603cb6bd4dbae95efea293af5854b90ffd813b36009aaba230057834",
         intel: "f1154eae151c1afc1d6edd99a6c9c3d82db46784c1aa8ebb7d337039c28a5871"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg"
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
