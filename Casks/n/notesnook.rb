cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.8"
  sha256 arm:   "94f23dc0423303f0e48c148a03f12793745d1be9f0f7011b632ce6a7bc900f2d",
         intel: "5f1a2de29fc5e01f68c98335be34541b7dc2478a09272d1f35917915fa9e177c"

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
