cask "loom" do
  arch arm: "-arm64"

  version "0.175.1"
  sha256 arm:   "cde2bd44edc7ab406db4e37281b1a7465addd86025863838afc94a7dacd834fd",
         intel: "6128dae33c552836b47f77ce17f0e43d53a3db295ca628f8565a0700b0d3010f"

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
