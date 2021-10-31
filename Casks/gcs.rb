cask "gcs" do
  version "4.34.2"
  sha256 "8fa9071853edb6deb30700c5c867ff9b06ab925d50cb76712fc05c12f32df289"

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
