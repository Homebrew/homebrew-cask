cask "loom" do
  arch arm: "-arm64"

  version "0.216.2"
  sha256 arm:   "8e361202869c415b5a26a491a089992d47a395022522691ecf9ffa8d1c26091e",
         intel: "b4b8a558eb7d90c95b6b709f1a40fa364177e38000889a14fc2994b5b58a4833"

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
