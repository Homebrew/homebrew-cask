cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.11"
  sha256 arm:   "ad912e0578ca01130af15031561cc708f2649af83c47c3d58d70ade76c0e3f65",
         intel: "c16b86dc3fa6cd808a50b9e3923917af2d0d917f8af2a5b063ac400fce3b1f17"

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
