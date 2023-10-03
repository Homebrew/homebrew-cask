cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "b922948be1cb3f1673d0053904e5fb834501489cce87b17df0e5028ea328326c",
         intel: "df47639bf62497e569fa0040c5f32897ce53e22a28e03c9cc0792c959a377c64"

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
