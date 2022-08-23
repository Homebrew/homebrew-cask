cask "loom" do
  arch arm: "-arm64"

  version "0.139.2"
  sha256 arm:   "95f2920d04eedbece570871ae2ce4a7a88d95d2ad71e11518553a33abfe8835a",
         intel: "99463bf9fc29aaa91035095e6555697272d9e57b37f4538156206ed5a92cd256"

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
