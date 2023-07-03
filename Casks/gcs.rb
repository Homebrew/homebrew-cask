cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.13.0"
  sha256 arm:   "13f9e997789a654c6320c6b96656d8a98881b30800853794094be430f9b96f27",
         intel: "092d983f25c31174fcb7d5ebc9f97321da5519d641dc06fe23c81ab7ec669a24"

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
