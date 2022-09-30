cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "cfed7325c97508b14f68a6eadf3554a47121072555467feb3212eac451e3d7ab",
         intel: "8372d60fedcc957445d1e6c250c651c3bf98b554c129b3469910b7cbea48142a"

  url "https://github.com/streetwriters/notesnook/releases/download/v#{version}/notesnook_mac_#{arch}.dmg",
      verified: "github.com/streetwriters/notesnook/"
  name "Notesnook"
  desc "Privacy-focused note taking app"
  homepage "https://notesnook.com/"

  livecheck do
    url "https://notesnook.com/releases/darwin/latest-mac.yml"
    strategy :electron_builder
  end

  app "Notesnook.app"

  zap trash: [
    "~/Library/Application Support/Notesnook",
    "~/Library/Logs/Notesnook",
    "~/Library/Preferences/com.streetwriters.notesnook.plist",
  ]
end
