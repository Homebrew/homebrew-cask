cask "loom" do
  arch arm: "-arm64"

  version "0.234.1"
  sha256 arm:   "4500eac865d74e8f040f0327308706fc7d08c29d9c057619fcf0ac9c5670bff4",
         intel: "fd57c69f3b209825ffeff2118b1bfaed697bc2b303767e1be7bb89d59509c513"

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
