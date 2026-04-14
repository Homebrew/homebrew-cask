cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.3.14"
  sha256 arm:   "ef4101f77597a7c76cde2cc2bda01eb6666022ad4f30d0935d702005c1f50d23",
         intel: "f9c6eb4ccd70da7391389bc93abe0d058c97c39f3769adf13b061955fd74042b"

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
