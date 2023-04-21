cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.9.0"
  sha256 arm:   "fb201cf0a5becbff6e8048b956f31cd4566a762779eb1adaa60caf80962f5150",
         intel: "14d6d43a3050f69ea213b307eaed849748142ca744c73943e3d1c3ce8e313b4a"

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
