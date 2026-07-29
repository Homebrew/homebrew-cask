cask "loom" do
  arch arm: "-arm64"

  version "0.365.0"
  sha256 arm:   "a6cba46f99f7cd39d305e6579115bc85b69713c9668a9426dc9e39010ac8e1e9",
         intel: "92e8e53b01c646ab56d93de21fd7d9a2a658d54b1b117699de469ac12fc621a0"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.loom.desktop.sfl*",
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
