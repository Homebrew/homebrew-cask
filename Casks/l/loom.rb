cask "loom" do
  arch arm: "-arm64"

  version "0.302.0"
  sha256 arm:   "4b4fd94e1ac9124eebd1d02da05a073d0e7ff1bcd543b41263955aaea698526f",
         intel: "8d37f8ae63156f5250eaa80f7d091ec4135088214702288556062e07880ac2e8"

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
