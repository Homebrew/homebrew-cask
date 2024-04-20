cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.21.0"
  sha256 arm:   "f5e28c2acd013ba859b152e5cfa55fa5777925f429ecf3e75ae9e5e33a9f1bc4",
         intel: "cb2ec75ce245ae5e06eed76c88b6ea574834c5b1a3fe171dc1650b0ebe24d4cd"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
