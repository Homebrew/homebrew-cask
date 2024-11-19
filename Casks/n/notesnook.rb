cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.20"
  sha256 arm:   "4bab124acf6384be243918b687126fccd6c7d486bf5b0b92abc5d5cc42f34ad3",
         intel: "ef3fb59941ed10bb78ba0a1b2b8c72cd2f5f4717d2a6dec05da05a04a4cf4345"

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
