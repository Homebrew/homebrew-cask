cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.4.3"
  sha256 arm:   "b20a57f06475fc6e7e1aeff24add994991729521aaad10259d47ca8b99cda077",
         intel: "48a7b4f77f95b0fe3f6a2cfe3ea4c6e0d5af85fe8fbdabcfe8e86da1e09cbe0e"

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
