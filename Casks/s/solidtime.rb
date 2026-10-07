cask "solidtime" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "1b0ef86d94e7a45c512f3c395e9ac8ce0dadb070c8f5a99e5c796c007ec7a7c9",
         intel: "491132623c219692148e822273865bb8ff104894ea1f59fa5672d5654df28aac"

  url "https://github.com/solidtime-io/solidtime-desktop/releases/download/v#{version}/solidtime-#{arch}.dmg"
  name "solidtime"
  desc "Open-source time tracker"
  homepage "https://www.solidtime.io/"

  auto_updates true
  depends_on macos: :monterey

  app "solidtime.app"

  zap trash: [
    "~/Library/Application Support/solidtime",
    "~/Library/Caches/io.solidtime.desktop",
    "~/Library/Caches/io.solidtime.desktop.ShipIt",
    "~/Library/Caches/solidtime-updater",
    "~/Library/HTTPStorages/io.solidtime.desktop",
    "~/Library/Logs/solidtime",
    "~/Library/Preferences/ByHost/io.solidtime.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.solidtime.desktop.plist",
    "~/Library/Saved Application State/io.solidtime.desktop.savedState",
  ]
end
