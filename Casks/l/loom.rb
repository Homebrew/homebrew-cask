cask "loom" do
  arch arm: "-arm64"

  version "0.170.4"
  sha256 arm:   "095377d46ac248cb03bedb8e645bc3582bf219aed34261b841e733e0e6cd2042",
         intel: "af11c7029e6a9cc092e87c9bd1c28b90d191e55fec460653ce1b33582574bf7b"

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
