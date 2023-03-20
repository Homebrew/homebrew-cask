cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.4.4"
  sha256 arm:   "4a91d4a7dc1c1e117e922e3a86a6a27bb12092915a23d561a831b625126622d7",
         intel: "9e46638cc93f8fc938cbde4878dd82552bdebcf844761ed57e1d22c04f0c5f15"

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
