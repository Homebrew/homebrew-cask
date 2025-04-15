cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.1.1"
  sha256 arm:   "ce00895af8e15d1daa846b0afc91f0f5957e6db366eaf81f6205fe1280dbbc1b",
         intel: "1edfc602e62cac8b7263c0f8d5c61d0182748680b526f6b9ae17d7e1fb313b94"

  url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/DeskTime-#{version}-#{arch}.dmg"
  name "DeskTime"
  desc "Time tracker with additional workforce management features"
  homepage "https://desktime.com/"

  livecheck do
    url "https://desktime.com/storage/updates/electro-builder-auto-updater/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "DeskTime.app"

  uninstall quit: "DeskTime"

  zap trash: [
    "~/Library/Application Support/DeskTime",
    "~/Library/Logs/DeskTime",
    "~/Library/Preferences/com.desktime.DeskTime.plist",
  ]
end
