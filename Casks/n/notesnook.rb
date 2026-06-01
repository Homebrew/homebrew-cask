cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.21"
  sha256 arm:   "f424c6a423c963ab2ae89583a68093c8e4edfefb426b30daa03cc5154cd1f738",
         intel: "62126f90aade59445e120b3847d956574fdcc7777486b8ca4c7667d210eca779"

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
