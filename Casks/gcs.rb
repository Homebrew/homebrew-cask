cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.1.0"
  sha256 arm:   "5e81772cb8845206ee994145b790a3ca02e4069c250bfc640c87043c03d2a262",
         intel: "2330261c0893bc2d716ae89769a347e375cb605600b81bbd636d292d26b5f390"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  app "GCS.app"

  zap trash: [
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
    "~/GCS",
  ]
end
