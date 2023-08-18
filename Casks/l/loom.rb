cask "loom" do
  arch arm: "-arm64"

  version "0.168.1"
  sha256 arm:   "1c94618a37753481f33cf56377e95a632e575ad30d89ff1ede1906f2784a8a09",
         intel: "71e4a6e0029d85119c6b29c33583368ac168e3c74063e5876cc8c50441aa98b4"

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
