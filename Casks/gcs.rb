cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.8.0"
  sha256 arm:   "cddebf9838c70ade11228cd8fbe104f119db6ddc5b73eddafd637a37a48a581f",
         intel: "7abcdfc0bd31ee139171eea4f941841a6f371af1b708f509d5480ac90c8b322f"

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
