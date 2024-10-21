cask "loom" do
  arch arm: "-arm64"

  version "0.257.7"
  sha256 arm:   "54bd7ee5df9fe9f53f90b0fa3c0f69ea28e9736e52debb77342aaba1b37cc570",
         intel: "1f305c4a454e7e0e6130d1f7f0fb4857d93a30a2e28ce09863852daaca9c823c"

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
