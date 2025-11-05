cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.5"
  sha256 arm:   "0d363482aeb669739a9d9bd895eb725e5e7199cb37d2f593284e2766e8d10aad",
         intel: "6c9facabafe565c2dc33b4762808a07a6769443a92884c5f712ba7350edc1b0d"

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

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
