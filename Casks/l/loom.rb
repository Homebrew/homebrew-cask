cask "loom" do
  arch arm: "-arm64"

  version "0.169.5"
  sha256 arm:   "b7ef7f6464d866802ccebcffc4f4cba1b18602fd4a8801d68867fb7fe0029679",
         intel: "ea8b19f543811ab9179be9bd01609fc08ae1c869a60a46b3dc927190a6d02813"

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
