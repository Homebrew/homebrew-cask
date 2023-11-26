cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.12"
  sha256 arm:   "1b86e6740f000011f1be9bd852cdd08fc21d03af3505ab8e925ccf294074ea59",
         intel: "55561486a0143b9b3b3d496d0dd638beb2db43aba8f9569ba9a6bb00b3fe8308"

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
