cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.6"
  sha256 arm:   "8a99507ba2adf741489ba1d8e1080f588daeaf88dbb2d8fadaceda5fe0ebfda5",
         intel: "4998ab5b67262271dd59369287a44cd50da2b54aa3514b34b12ef2aebb9a1a3f"

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
