cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.23.0"
  sha256 arm:   "781898945c724d9cf2c18b60b325a43b3ec2594f798d49b5a1ed59ca709d6f7f",
         intel: "a16396ac570fdea74bdc9c54d65bf9b11ba02d81b9d337487339feb3168f7aef"

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
