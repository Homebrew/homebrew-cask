cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "15e3d5ef28532c3223a1c91d75f3d647941feb729df10c5dc7a2c9762f4fd241",
         intel: "96c454ce6c463c34578e176ccceca9a07d5f0765c62a5b0fec021e4bff98b1ac"

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
