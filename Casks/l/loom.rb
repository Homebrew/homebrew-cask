cask "loom" do
  arch arm: "-arm64"

  version "0.260.0"
  sha256 arm:   "f2e7418d5e5cc0027da70a94a854d989b1331ba8a7ebb6c4229f21b974f72227",
         intel: "a02bf05a3a90e94666459207fcdbc0010605cb33c85214a7a439ac2c7c77b47e"

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
