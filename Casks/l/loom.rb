cask "loom" do
  arch arm: "-arm64"

  version "0.193.1"
  sha256 arm:   "d0cee22e836d33dc426a1803c76ad67abdcc758b51148fe00a6a919e516bfeaf",
         intel: "0ef7071b2665e63127e43c91d7b936da2e689bf96f222172ecd4a4928207d801"

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
