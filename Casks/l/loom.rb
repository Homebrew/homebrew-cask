cask "loom" do
  arch arm: "-arm64"

  version "0.252.2"
  sha256 arm:   "85876cee0bc5b635161650d96a0459df91f1a60f6758bbbe3da7e9010021c479",
         intel: "7ded0112424526a271cbc49f430c7afcb53a127070053aec022d67f3dbfca6a3"

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
