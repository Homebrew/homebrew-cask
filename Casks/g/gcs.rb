cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.22.0"
  sha256 arm:   "0d59e9222103b8bde26568ca7d3eec62f5e65a18b0d38d9b2d9f37cd113361a2",
         intel: "604f634afeb1632c619b284f007bf23b299fd09d28020e138740688a968e81b2"

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
