cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.5.3"
  sha256 arm:   "c579e37497cee3e75e98ccfa7596c1d4749eb5ad1f0b682a5347e4c3e6f220c0",
         intel: "9d4f3c13e0d1db2bf0b3ac96098e15a6b8b1c1aa1fbc782bd0c0dda604c791f4"

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
