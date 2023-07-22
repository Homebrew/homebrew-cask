cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.14.1"
  sha256 arm:   "1a5958fbe88a1f202cdbd6317216ce5a6493af4ac1cc3c4c1e885108f58a71c8",
         intel: "0deb79dae33545f48cc58c2f21ea1d023153e6284f710f8e8d6e30c720895ae1"

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
