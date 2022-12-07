cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.5.0"
  sha256 arm:   "7a7e447c1999e312d2548d61ce094e84affb77c0e1394390b37aa8ec474b6780",
         intel: "0ffaf6b7fa8f49053e35bb6280b9e3cb7e7e8dabd632f48890ce09220d4219b9"

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
