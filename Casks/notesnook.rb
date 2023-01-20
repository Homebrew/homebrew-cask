cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "b4cd0ea5acb6595034bd8819e3c0ef2593e0e4d086ba17b2ae4aaaf6f0cec192",
         intel: "0511e01c0d51394c42b256f1df03cd177bd9039c68b7bc0186b502a7b673ccf9"

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
