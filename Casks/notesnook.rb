cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.6"
  sha256 arm:   "a11540b4be49bf23e5a23fcec80c192b656cefdd99a663ce981d333d7c1257a1",
         intel: "d9d5a042f7da7f5b1edc6c45c5d4267db8ed1c88529b96eefab79de3ab406cdb"

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
