cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.16.1"
  sha256 arm:   "33038bbe6af5dea4f01da47d86061ee175b4efdd8e22dc12e2df84f4a2ee8f4a",
         intel: "ce6fe09cd86e873ee5d74b19fa689a65d0cfff441c5f8c5da4b8cb46ace5127d"

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
