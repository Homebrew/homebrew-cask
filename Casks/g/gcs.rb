cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.19.0"
  sha256 arm:   "4d72f5a1855ba22eaf8601b9565c3a71d16bc844aa484296acb1e40b742d9d1a",
         intel: "7e2340b0ad72d96a6014b9880fa5bcf8de8f4dc0e056e1d05a832a8c225e48b3"

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
