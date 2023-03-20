cask "loom" do
  arch arm: "-arm64"

  version "0.158.2"
  sha256 arm:   "4d7fe119fd4e36c0daf03698d95f880d1364e81e763331896fe0155fb9a84c68",
         intel: "90d73f683ff5cb2d31e67605dc93228a9a6ef2361d5a2456d6c90a31a432d179"

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
