cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.5.2"
  sha256 arm:   "1e42f140ab54981abccf8fd5cc7958250ef69c44f1aca0590c64946c8b88e488",
         intel: "3e8e9b04daff69164317b9890f72a2a7804fec0f4882b8b86d1232a4d02f2642"

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
