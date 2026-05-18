cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.19"
  sha256 arm:   "1a484eea20a7f82acb0c684a046ca8826d1d36fa403d94b4c47fc40f9a123765",
         intel: "2c0b024512c06746ec1e48ad5c71388c5ebeb604a6d079d634a1b76d228bcbed"

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
