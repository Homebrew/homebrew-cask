cask "loom" do
  arch arm: "-arm64"

  version "0.354.2"
  sha256 arm:   "e284d3589f334639d08ca0b326ef3f6971a4419f94a24e9cbe6fcf8263112554",
         intel: "49008cf84c96c5468963d318a05c248dc490024c4394a0486aff92e4adefdd06"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
