cask "loom" do
  arch arm: "-arm64"

  version "0.191.3"
  sha256 arm:   "6ebac1b7b7036af7c794ea21f37edfd213e25ff61487ac7172f1cb1e70bd5655",
         intel: "055c51cb035907a615de27b0e7ebd1c8549cff901df6f1b9afe8c2721fe69f73"

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
