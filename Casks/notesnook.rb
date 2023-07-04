cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.6"
  sha256 arm:   "22d50ef3f19e55a9c1c25dd6a88ba8555e7fc0a26c471fa7a8ef3e907640dfee",
         intel: "f9dbfb1399c860f0b8fd40ffaf09785b8eda91189a5ae3f10ca5c9b897694650"

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
