cask "loom" do
  arch arm: "-arm64"

  version "0.161.0"
  sha256 arm:   "afe3a21280368a6e2a1b34274fe91ab03d44f1c56b306d0a1e371817a156bc67",
         intel: "0e2aab08f32cb3de7fe76a9ae6aab035d47d45559d3f1c6316cc48270fb62bda"

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
