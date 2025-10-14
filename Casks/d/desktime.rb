cask "desktime" do
  arch arm: "arm64", intel: "x64"

  version "6.1.2"
  sha256 arm:   "1731ed0dda0364bb601deeaa29db95de4c0b4beeaaebfd398d137bca013532ad",
         intel: "a2c8b19952663a06b0971176d4130716f3ba7ff0c3708ddd439a1f8dbf337b87"

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
