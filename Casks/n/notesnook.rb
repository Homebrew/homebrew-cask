cask "notesnook" do
  arch arm: "arm64", intel: "x64"

  version "2.6.6"
  sha256 arm:   "8cc05329096cc15ffbb2abc1c7ebf97b442c387e8481f5769b9864fdde327b0d",
         intel: "b4a5109309a7fb8b14688b2d04480f777672a0d43e2e9c805e33ff192bef3c96"

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
