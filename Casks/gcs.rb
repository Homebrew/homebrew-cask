cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.7.1"
  sha256 arm:   "eb429cc2c2982850efaa7f635f2a3b43b7b240765b2dfed92b9d6c068e3ef134",
         intel: "bf06320de41043e9d7a85dacb9fba29a7da82493d3dc1f40982d33500a6c5729"

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
