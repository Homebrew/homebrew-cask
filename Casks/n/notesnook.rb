cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "d4088fac246f17357c37a8fb95c2cee9ac4090fd61910ee6c3ee9c6f7b5d8cce",
         intel: "5e64f2b071b9d6aa51e41e35b932c4ed7d771ae8531f7c1bcd36f170d453bdca"

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
