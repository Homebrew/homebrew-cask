cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.40.0"
  sha256 arm:   "025fa7acad5f79ae2441c0dc1a7b2b01e207c7e1b4783e49af6069de7e6e2ebf",
         intel: "a846e5a9dbe4ee9dd11b27258a27136457f633953d3a495e6e70647f4c0a9f1b"

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
