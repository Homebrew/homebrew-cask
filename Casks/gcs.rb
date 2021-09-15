cask "gcs" do
  version "4.34.1"
  sha256 "70503e417b5b1b8a2088c2edb3354009dd9017bab614ffdc05d20f4880ad6a0f"

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
