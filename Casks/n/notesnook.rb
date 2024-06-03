cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "0f92885c78735d704e11ca0e9f640a2946d518c5a1456f8bedf8314712e95ffd",
         intel: "b93e31a382d3ef48eaedb1e6898bb814bf0595da697366a2f32119cc633333a4"

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
