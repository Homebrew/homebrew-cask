cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "245f38ebe6fdf29a1c26a88170e3d8d458750b05901732ba458a190dc8b9a9d6",
         intel: "8aafe2923b12cdc72b852a4c88243c980ca6fd15af068ba3f23b253b767aeaf7"

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
