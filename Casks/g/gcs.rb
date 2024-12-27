cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.30.0"
  sha256 arm:   "4f38218ebe78f7f77beaaa14d28a2369f7e0ae8b2d70771f5dfa2eebd39fbb8e",
         intel: "a976b74e2729a08d7f4ab5b77d9a17ec810a95e0e5215abe61b7e46f1c7d5e2d"

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
