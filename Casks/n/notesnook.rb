cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.10"
  sha256 arm:   "ccf90ee2b0c42185f36130b042326b654d6a5d90cffa4c4e8f67be7b56fd1d08",
         intel: "3f06eb1e1ad29a938abeae44b7e11fad7d9b263d2d03e876d28b0d168b80cad8"

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
