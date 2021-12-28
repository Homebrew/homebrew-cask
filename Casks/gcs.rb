cask "gcs" do
  version "4.36.0"
  sha256 "4dde37ee57b16b130371481836f994fe2792ed4b6dcfccbfabd6035cfb6611f1"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/GCS-#{version}.dmg",
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
