cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.16.0"
  sha256 arm:   "f765c48adca1c13797b86577f60755a00001f0d8c1c0bd892aacd5226e14198c",
         intel: "9fe996036a4ced700b83b4d693b4df6100bd9d681d9c19e7aee63e3e63fdcec2"

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
