cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "c38b2e6f10361514f458aaa89a25572f0108d397c6292f7221ba2093a0246843",
         intel: "1427b4db239e856f31b0bbf1fba21b44cf3a3c1a022e1c6834a0fa279751300d"

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
