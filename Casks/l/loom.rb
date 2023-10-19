cask "loom" do
  arch arm: "-arm64"

  version "0.180.1"
  sha256 arm:   "7e2d0c8ae9f0e370f3a225f6b18850d1f00f420b2aca109c8359e4513597f49a",
         intel: "fd6f4142710c63c4cf9efcca25ba2f6a4c5a27dc888a65a9d8ca14663618b5ba"

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
