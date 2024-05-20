cask "loom" do
  arch arm: "-arm64"

  version "0.227.3"
  sha256 arm:   "9fea3bbd3ee34404c1b768596c035c6284c736bf8f307c0d659058d6e76ce6da",
         intel: "c9dfa6a694d5fc988ad97db6f5e583d271fc2837984ae528cfbb778747c223d3"

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
