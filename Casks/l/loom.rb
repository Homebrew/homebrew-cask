cask "loom" do
  arch arm: "-arm64"

  version "0.272.4"
  sha256 arm:   "c75642efbbdd2889551ab1daf4db6863d6b8e49e9998320a7c6cec172a187ad0",
         intel: "a8a1a877a64e1f35ed1cee8deb2b1aedbfe10d20e29bea7b01eb37db1fa308e8"

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
