cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.26.0"
  sha256 arm:   "5533e88f80d4d62160153305bd15a6a9d169e17d7f7a4efb2b3bed6f9ac635a3",
         intel: "70911f8a44c902d5a261138d56c0b0f21745f7c600f9624f0c6c21f4d2d2e950"

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
