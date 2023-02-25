cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "56953cbe6cc13e2935feee727a33b3a92d4834c846b3bf173b55e8d85e16ebb4",
         intel: "dc3f4b934e0b7941e42bbbe4e46a99f5377dbd7e785ceb3c1d7912d57758872b"

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
