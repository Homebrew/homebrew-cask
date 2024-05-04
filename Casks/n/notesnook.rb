cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "c75283a6df339acabfcdca89d3c8b6a7208c1a54c37ecd22a91c10348a367026",
         intel: "26386e027bf31da643a4b8b7686defecb3cfd89b6230e03a98175acd2593c075"

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
