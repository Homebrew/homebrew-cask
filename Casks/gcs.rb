cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.0.1"
  sha256 arm:   "9289f9772e17ba895ef7197a37d8b0e99521d6f99f37be1896e4a725ee953408",
         intel: "ad4b350feda2eb2ee108fafd242429f53196eac311365244792ebf00d91b79f9"

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
