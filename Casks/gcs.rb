cask "gcs" do
  version "4.35.0"
  sha256 "cb3508fa86147e2217f6f62fcb89d52fdbebfab15f7e2ce391a4e291ef55895f"

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
