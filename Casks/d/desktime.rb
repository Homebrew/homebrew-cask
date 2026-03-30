cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.1.4"
  sha256 arm:   "e6f2ebde4b09c3513b89130561726fe88a7f10c9580d603cb0edfb32f4c9510c",
         intel: "2eb05fe2f2a2071ce3078526e585943baf13e82d2a9b6491e28b38ae045be840"

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
