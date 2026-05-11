cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.18"
  sha256 arm:   "eff9f8a3d0b64b05f7927fa668a0d17a7592bd5f0a421a7556432419970870a2",
         intel: "ed867e6d28406d637a423476629c913ad808ff8803bfa8e891574d01b905a819"

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
