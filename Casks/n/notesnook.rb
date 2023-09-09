cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.3"
  sha256 arm:   "c89eb79be1a7a000faa30e7519fd35cc5c9ef8e4e304aab4575cb6bf79795cb1",
         intel: "e461c03e1ab6097839d9b596ee7d4754f9ba548590b40534bfd09b3d1bdceb41"

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
