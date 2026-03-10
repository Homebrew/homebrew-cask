cask "loom" do
  arch arm: "-arm64"

  version "0.337.3"
  sha256 arm:   "378894d72e18f7f8e64474b66b264d5edde8214308a5cc6a8fe3f43cfaa9caf8",
         intel: "a6f44a40ff1bfaa81669b4ee1764db8c3700218550573d12bdb6c5a9639fca45"

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
