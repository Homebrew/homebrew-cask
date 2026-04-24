cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.15"
  sha256 arm:   "8f5490fe19ff219eda650888c7a52090e4b1b3abea3c64b4cb801791759c1463",
         intel: "84b280df3d470e13f3302055c43974e43b037b11bbdeb70a1e1479111402809a"

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
  depends_on :macos

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
