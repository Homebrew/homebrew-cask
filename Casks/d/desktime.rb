cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.1.3"
  sha256 arm:   "0a18b52931598f6bb18bc5ecd81bdaf6a1588117d068cb695f03dea14bba3520",
         intel: "552ebf0718786a81e65eaa13361ce003d978a63e3b4099513fe444420ab6b599"

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
