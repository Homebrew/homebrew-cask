cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.6"
  sha256 arm:   "1a05c73b089957ddf87f41c7c1b80b7c95442f2b4b9e4e48a575fe294e7237c2",
         intel: "c05fb6d6dbe911952cc24451be0bb5933096d75e98228c5b72b5e6332339cf80"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg"
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
