cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "1fedf22ffec1d47a12064afa7a8ba902a3e85c3979b76cc6023a5554eb27d66f",
         intel: "642a0c3fd709b956637c5a6c974b0780cf3006b443d095568bb4c601a11080ad"

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
  depends_on macos: ">= :sierra"

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
