cask "loom" do
  arch arm: "-arm64"

  version "0.334.3"
  sha256 arm:   "3c3ce6fdb5c8dfa8cbad8ccd69f39dbb4f390c258d396555917304d739a4c3cd",
         intel: "9f7118db4d1474f8ad6b2114f84e8d7eaa32ca3e84f4f1fce198d16917e21518"

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
