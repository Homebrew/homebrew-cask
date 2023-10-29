cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.17.0"
  sha256 arm:   "6f438a38adb413279bb29c38c6ab5eade5f2d78a144dd1d3b1d43d51e4d8c662",
         intel: "c2bbef3fe2a7cb80b81376ad54167fbd687a25eb29d4303a2837714d352ba1b0"

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
