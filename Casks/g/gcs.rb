cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.20.4"
  sha256 arm:   "fe55e82109fff2b250a04e7f8edc0e0ae4afc920f1cc3416f3986f631ef6313a",
         intel: "ee8dafc3d21fb0b91b1092a41d595b9ef2c0a44971337e36d90b00e0e32112cd"

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
