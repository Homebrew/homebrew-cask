cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.8"
  sha256 arm:   "7e84436d32ff1c98b6e89b167e4f54ecdddfa29facea8edf31ad7653be374ed2",
         intel: "4be3cbf82005e857c575113c537c24b048ec3a193bf94437f65e945892c93b20"

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
