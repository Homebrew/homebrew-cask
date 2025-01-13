cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.32.0"
  sha256 arm:   "8659f7c5031c85cd2b8c2c3fa290f863ae0f48f08d5d7ae9f8b7d9c05c45a701",
         intel: "3631f6842403910ac25b6bc0165903c802c39f225b2bfe915f20b4fd50f41cb4"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: ">= :mojave"

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
