cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.3.1"
  sha256 arm:   "85105ef95c7a2778dc65c33ef0cfa6e09245d020ded238e150a12d4e6aa84e56",
         intel: "e192f3930eb7391abb754fc1e8347a4a13e891dbe14bd2decf256c6a9c218952"

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
