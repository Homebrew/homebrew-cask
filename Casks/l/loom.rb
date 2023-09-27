cask "loom" do
  arch arm: "-arm64"

  version "0.176.0"
  sha256 arm:   "a9d4d71d7380ca4e7ba968a9867f4badd63f348bd810f23ceac76d9101e6650f",
         intel: "db636392a52a332f2a75fe72bb7b00cd12e76ac1859723f4ea2f477cb680443c"

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
