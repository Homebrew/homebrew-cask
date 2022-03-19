cask "gcs" do
  version "4.37.1"
  sha256 "5bf8c91a4315b3b0893aa9b70c6f0a46cbffbe20430fb0325ac1ba8501ea5308"

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
