cask "loom" do
  arch arm: "-arm64"

  version "0.219.0"
  sha256 arm:   "25f2c6ff1bd483aa42183d64fca29bd3aae5e495011f648027dd544fae725a75",
         intel: "90e443bf6ded9ed29a681644cf3df5358867e57a49370f1145663a1461fe30fd"

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
