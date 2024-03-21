cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.17"
  sha256 arm:   "bd169266901abe33a4bc845fa06bed1e552a7cd5382229fdbdc2607534b3b58c",
         intel: "31fdecc6eba06d03b2d1b4310bbf240ed54658fecc8e579cac0c09dbf4d0d877"

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
