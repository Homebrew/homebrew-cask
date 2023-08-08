cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.15.0"
  sha256 arm:   "44d0c56ed124535d842d34398ebfa778f0ef2f21977b398855fc4573ce84ca97",
         intel: "65eac0ba9c7e81112ba182d1bc70932cc4a3b081af0d9e075c7e54e429f7f2e2"

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
