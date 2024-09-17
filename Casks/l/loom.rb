cask "loom" do
  arch arm: "-arm64"

  version "0.253.6"
  sha256 arm:   "5cddb0ef6b3b42419c0079eac3ba3d82e0c23977fc68d5e1c3e8a14d6af37747",
         intel: "204ff842480ae4b56c61ff0dac4c2827680761b225c1e81127e903cc4cf82b96"

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
