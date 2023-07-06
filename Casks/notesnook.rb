cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.7"
  sha256 arm:   "71b0672ab6fca68c832f50fedf652b3a5dd15edf0cb27730e38d2aadaf7e1acd",
         intel: "725b888b39b0788314e91205c68110dc3602851544b952f1acf8f07c57deab5c"

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
