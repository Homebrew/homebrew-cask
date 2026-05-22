cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.20"
  sha256 arm:   "a333c0c2e337993abcafd883fa42805f379bf19e7161a3016c7c97c78504858f",
         intel: "8aa65b3a54a409732c0d852c22601544e78a6f5d518fabca55bc930c66b27f36"

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
