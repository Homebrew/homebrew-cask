cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.10.4"
  sha256 arm:   "55c6f5521e576351e4b1fdd6b19b62c7c04137851efd3f4df173d0d5e22a6e2e",
         intel: "da155f152a9ef919ce4c3d5ebc7b4e9dd03a27bb0fe9c18ffc3c169dc015f4f8"

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
