cask "loom" do
  arch arm: "-arm64"

  version "0.141.0"
  sha256 arm:   "d727a9966754cab7fdec4dc731b25b676b8d75795d590dacd12a382cf0074d73",
         intel: "3eb2037d98792b963f837537a259c935f5f6733160e57b3a0cb42da6423ebb34"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
