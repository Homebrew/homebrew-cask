cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.3"
  sha256 arm:   "5a3523b69a147274a78c34b35eba022e5b8b1646b43b330a703f227e43d8f570",
         intel: "7b458a9a1a6aba3695c0b45ab5b30fb9d6ef21a47297c350ee52a44c2a8fbaff"

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
