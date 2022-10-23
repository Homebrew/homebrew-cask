cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.3.0"
  sha256 arm:   "61d036f86cb5bf68ddfaa34cbb3db602fa1820e0d19f9f63f1f1ac97c6a9f8c1",
         intel: "0a18ec4877b773951d7a2639d5f5b1c37c3d5de529239210ed2f605fe2461303"

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
