cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.2.4"
  sha256 arm:   "635e712fb2205134fb9cf56fd8a4e1b13aee6d1203a5e0129c26668d43894a17",
         intel: "335b86bde55a29634afcbc19b5eb9d65e6cd7c233718d195d43a36944047de15"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
