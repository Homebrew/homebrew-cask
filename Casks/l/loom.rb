cask "loom" do
  arch arm: "-arm64"

  version "0.180.2"
  sha256 arm:   "86fb712911aa7d0916f40e9b31d6baa85d224388561aa3884f64723ed855ff10",
         intel: "2c4026d4165e6728c1295358b3f67fc748455f8a5914af4533085e2b869b11c9"

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
