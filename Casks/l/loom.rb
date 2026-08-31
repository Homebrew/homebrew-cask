cask "loom" do
  arch arm: "-arm64"

  version "0.372.0"
  sha256 arm:   "f1fb883c3639b2c12776f4ade0feafd70f5ace30e9ba841eb482f758a605f5fe",
         intel: "abd69a2508aad0174043e80b12229bc95ece0447d5b294c1eb9fb89b5c15e97a"

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
