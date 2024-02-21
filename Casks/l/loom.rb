cask "loom" do
  arch arm: "-arm64"

  version "0.204.1"
  sha256 arm:   "ae4eff8a5dd9410663792f8dfec7cfb71f6e87fdf21e9eca403563412922bb3c",
         intel: "1573fb9dce6b7a855b742c24d3d17fc5bc45802db75e6e31521aa381b7544355"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
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
