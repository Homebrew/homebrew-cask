cask "loom" do
  arch arm: "-arm64"

  version "0.329.1"
  sha256 arm:   "5e88e73bf1687a79017dcd24e1e26180ecb8ed9ea507d3e85b753eb8fc9ef326",
         intel: "bc4018222cb0053812e5d24e60a89b761c6a4fbcfc5c67410de0c91da8ed3d8d"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
