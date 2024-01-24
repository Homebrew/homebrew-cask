cask "loom" do
  arch arm: "-arm64"

  version "0.197.1"
  sha256 arm:   "c8155e9f013b7304554ae5f921dc6c6074e33071cd58ce7dc1abcae8e3ba0b15",
         intel: "2bd62450935203fdf51428a43bccc7e92a36e1c779f3f54d62d0f40368525347"

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
