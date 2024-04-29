cask "loom" do
  arch arm: "-arm64"

  version "0.222.1"
  sha256 arm:   "923c57face3d78a134d48b3a0f8ecf66b2c7038dedf48c5148bd2331e74ecc4c",
         intel: "c8757634153240352adc0390314ba49abfbfcd5208563791eec0f58593343af9"

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
