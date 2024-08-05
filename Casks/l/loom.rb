cask "loom" do
  arch arm: "-arm64"

  version "0.245.0"
  sha256 arm:   "9d005509ce8060b36d3deeddef843045e3df73df92719ebbe37fd1c57d5612ed",
         intel: "cb6d642c808b2c520f0fd6f6d778b82d4b5a464b07bdb9b615e3e7373a246d95"

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
