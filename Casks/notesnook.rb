cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.7"
  sha256 arm:   "62f963ca7290362e7678a4d8e02b8267512c75a968a49b20864d8da7f0ec69f0",
         intel: "d3b3af58ad9c7bb380b2aa06aa2af185b1176c8b385437143398728ed340cb50"

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
