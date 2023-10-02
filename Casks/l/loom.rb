cask "loom" do
  arch arm: "-arm64"

  version "0.177.1"
  sha256 arm:   "e14bc22741cb81772bc8b7d7aa461b565e023646141614af9454393784301efa",
         intel: "741a9725e5031a754edcddeb11ef6c13ffcc266fab8039edb061a72e0aa56913"

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
