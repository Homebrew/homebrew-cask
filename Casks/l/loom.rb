cask "loom" do
  arch arm: "-arm64"

  version "0.332.0"
  sha256 arm:   "dad5d488ff2a8e5796d8a22c837d0857e5eedfc6bec6c3c86f5a96a485bd6898",
         intel: "5278c45aa90abc31e1a0c84d8119d7e0bf30a3e1713eeb54e687f06c02c032f8"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
