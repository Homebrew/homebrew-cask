cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.23"
  sha256 arm:   "89302d43a6509bc651bf08a39f651f1dd72dd2a1ee9908a2f06d4deb6f619943",
         intel: "2e94cd6cdcbf5dd8afd76b15416e9a5be320c2a6c64b65f5a86caaea4fa6d35e"

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
