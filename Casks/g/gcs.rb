cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.31.0"
  sha256 arm:   "8ab04a96952a56ccf62e2a407db654db58d86a867e85ca1b13dc79fd61f0e4fc",
         intel: "8bf283f69b3fd92d0fa5b764e9df751369f942f8190d45d61f3476c96a900038"

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
