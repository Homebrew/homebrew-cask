cask "loom" do
  arch arm: "-arm64"

  version "0.150.0"
  sha256 arm:   "3ec0ca5721730f87c4aae11c23c9365dfd943895a507268c02316befd00a287a",
         intel: "024b888dce365d466df6bf2179849c4dfc8dbfdaa3725fd53bc55b309809434b"

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
