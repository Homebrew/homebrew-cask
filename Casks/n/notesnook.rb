cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.7"
  sha256 arm:   "097e6673c1473765c932839b87959ca13024d54647fd720fa89426b4d660da92",
         intel: "d1a904795ea6267974657649a15ebc6f344c1929c232e6b16efa83ca7cd15abc"

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
