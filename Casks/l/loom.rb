cask "loom" do
  arch arm: "-arm64"

  version "0.283.1"
  sha256 arm:   "9cb6506d4f59e8aec211e692bdc87ad98ed248cc24f1d8b716c60afcb9f41d04",
         intel: "f4acf1d5879ca3636b4fafb1503774f42b7fd0442420805fde5c6d450fed9eb6"

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
