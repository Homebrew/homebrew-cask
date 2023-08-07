cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "e9f85d5153ba374b9b692dbdd02517e2ce22a4f61144f3f024ff0d97bf39927d",
         intel: "f951c5e979d0fb9b337e1eee5859ff1eca759a638fc1e68a1b6551db6319625e"

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
