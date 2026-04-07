cask "loom" do
  arch arm: "-arm64"

  version "0.342.1"
  sha256 arm:   "3cbb78e9b55c923f950f5160031ac746b540a6d517bd1a01b0d028d4511fe71b",
         intel: "33f0ecbc41c6d1d6bdba19748e05527bf5c2f28ac023129ba4b7fbe8d918e6de"

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
