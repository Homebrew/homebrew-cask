cask "loom" do
  arch arm: "-arm64"

  version "0.161.6"
  sha256 arm:   "83044b258826a14fa8f05fc327f07f2579f69111b0ce4ed71733a2abfb32aa78",
         intel: "6ad49892dfb58ed3783a70b15c41700d01f116a78b038ee101d5967b8fec1289"

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
