cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "9fa64e168c991e4d60a00cab998e0f1e7fbdc1d579a5cbc0390bd20573a3a2b5",
         intel: "094e33406333ec0b8d35934e17148db8ddcae2b69620ddaf9f6d77639de34954"

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
