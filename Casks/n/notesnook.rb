cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "ae51d5f372af2e480e3850572454591139583170560d7422092612b5120d1f83",
         intel: "233996e7c32cf537fa4aacc2291cba99ab27b51eeb18bdd7d676ddcde0a48da7"

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
