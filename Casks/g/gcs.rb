cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.18.0"
  sha256 arm:   "a30b9be95fcd3415d82533f5fb2a39aae8f7c725bb90acf32caf9a342a454ccb",
         intel: "bbf2d83e93019b63c037ddf062abf6bd3a1b5a71d259e9cf791fc05642cfde0a"

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
