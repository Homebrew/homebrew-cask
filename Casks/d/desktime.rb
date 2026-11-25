cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.3.0"
  sha256 arm:   "b0611f8513ee3c1eec6e700d77b9e21bd1ed1a74ea349b7314e1cac2f1a5396d",
         intel: "1485ed69e7e91ab9a11ba265b220147f1e13a1e53b965b105b00da9d2ca1ed65"

  url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/DeskTime-#{version}-#{arch}.dmg"
  name "DeskTime"
  desc "Time tracker with additional workforce management features"
  homepage "https://desktime.com/"

  livecheck do
    url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on :macos

  app "DeskTime.app"

  uninstall quit: "DeskTime"

  zap trash: [
    "~/Library/Application Support/DeskTime",
    "~/Library/Logs/DeskTime",
    "~/Library/Preferences/com.desktime.DeskTime.plist",
  ]
end
