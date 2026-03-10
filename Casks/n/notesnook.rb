cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.9"
  sha256 arm:   "b0cf88046e4ce893dfb49b7538251b69b62d627e5fd79506f275c4587df10687",
         intel: "e3d4fde0856bdcca913f9efa637cd9ec93b9922fe13aad7cbeb6b2bd972b7467"

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
