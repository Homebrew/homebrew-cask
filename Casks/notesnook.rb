cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "d82095c258900cba9663b64f9c1812bb0d2f5fe710de8e0250ce0a71ef6e6d94",
         intel: "63dc9dac23326b698a5fc47f64f7c004d5f309a2f178e3ae4b17897d2f2fdc11"

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
