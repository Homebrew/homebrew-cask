cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.26"
  sha256 arm:   "aeccc6c8fd2a71914b6ebeb363dbdc640458409588db16874d6c10c1f619526d",
         intel: "81e2f2c66981e9191a449d3ab00b49c19d65f9e945a0e5796c0a227e725fc744"

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
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
