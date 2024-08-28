cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.16"
  sha256 arm:   "95d83e6d544e9bf5f30020a688c6a93107f77fa95ef451f3b75f1071a1fc4f10",
         intel: "1a065556dd469bde7f93223fabdf5f67d04837ee64a71ba671227d05ec5f0117"

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
