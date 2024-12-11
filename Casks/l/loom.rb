cask "loom" do
  arch arm: "-arm64"

  version "0.266.2"
  sha256 arm:   "99a66115f65591f0f85ef987fa55c388cb117c7afb28d60ed16f8bf7069bc009",
         intel: "c03dd806499d6c04715954c428602a4fe78fb7d701b03e7b628fa8f018775b78"

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
