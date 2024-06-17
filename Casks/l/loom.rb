cask "loom" do
  arch arm: "-arm64"

  version "0.233.0"
  sha256 arm:   "34855010a6fd6d387a2eaf00933fb15fe84080e5c7e19a53d3f96b082eeac0ee",
         intel: "2e8a51b87565a5c4d21b63b77a4d16572d2ff694714d4b231bbbc3be2ed98ebb"

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
