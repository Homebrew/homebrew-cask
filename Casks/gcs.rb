cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.10.0"
  sha256 arm:   "0f64ee267a2b676b8d5ea87bb37b85896000340084e23a980b3a84c256366007",
         intel: "7eb251c5da0ef36abc58670bba8fd4a29d4da1f048fbbc173c8db16fad5050a2"

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
