cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.6.0"
  sha256 arm:   "564bfaf96e3eb0c1f1c1b485d95fb30f787467e51f27f9508d80ac9544a762ed",
         intel: "f957f1f7dd12fe91d1ae7d3e59a81ad96801cabd66c26c8b8e7ddd3863c18a81"

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
