cask "loom" do
  arch arm: "-arm64"

  version "0.277.2"
  sha256 arm:   "6d75f37d20ca5298a7abbea49a881d02526ceaee4c09a3dc5a9e2ae5c7b8ce4c",
         intel: "d8f55df4e2ad64d81962b72ecdf50a1d4ee196ee2d6f25255f26901be8da491f"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
