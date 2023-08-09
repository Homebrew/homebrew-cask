cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "7759d7742bf598ae3ee0679fd6ea489074b727677dab34cb5db05669bb09c29c",
         intel: "80e50bdea2d233efe9af9d7d19cd1b694b5b9a1038d251ba5f3b824721882e47"

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
