cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.8"
  sha256 arm:   "4fb8269a74110f053ac1307fbdc835466c2a0dded2d63cfc9b00be4d6cc9e4bc",
         intel: "a76429457b724a50084d60bd9e9ae052baa37ff9f174743071165071cf794c68"

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
