cask "loom" do
  arch arm: "-arm64"

  version "0.183.3"
  sha256 arm:   "88b6821e0f34d5bcd1cea098b5443941a03378654e29ae382262cca29756d012",
         intel: "8b3f5faaa026d4196935f4181fc25c60d70732b8a3b5936af2b89ed9e02dbb79"

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
