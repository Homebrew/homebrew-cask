cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.20.0"
  sha256 arm:   "5b11fc7a29a3084c4851391dd34daef001fa7ee02293f8fc96ad64c709bfddeb",
         intel: "d193b2f6e9ae76226289743927e6741d4b25f9f1561bcabba60a4bc741a838f6"

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
