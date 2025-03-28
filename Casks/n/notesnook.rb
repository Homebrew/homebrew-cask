cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.32"
  sha256 arm:   "cd8a9dec453f85bb2c91718691fcb517e46c6c0cf51282522f81edf510ddfe84",
         intel: "7b9813f9a1e95c7d4b3893a3115ccb2b56059f95c35191d6d1e06367781333eb"

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
