cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.2"
  sha256 arm:   "5ba1a6e5e93f161f7f074f0e2ff3c2e785ae76c612e0f606ca36974b28fbeef3",
         intel: "939729198d236047767e39cd855c9080bc4bdb569e9c3f17d44bd28453bcabc1"

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
