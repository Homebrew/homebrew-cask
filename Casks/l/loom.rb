cask "loom" do
  arch arm: "-arm64"

  version "0.212.0"
  sha256 arm:   "1026d28181e9e8d9add5b0dcad4a93a5a4bcb832f215ff26297743d37c71e0c2",
         intel: "1062cfdb5923b376bf0e71a742d1bf584ca958ad1ac3ff26a31e205452d8d639"

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
