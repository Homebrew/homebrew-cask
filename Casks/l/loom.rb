cask "loom" do
  arch arm: "-arm64"

  version "0.215.0"
  sha256 arm:   "f17fee94d96afb82969f0917202f592b3ab817d9428eef8105ec59869216afa0",
         intel: "d55772b1d4050ca4eac0693818268c3160df0678a25c1444a12b8466247333d6"

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
