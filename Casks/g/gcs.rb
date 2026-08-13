cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.45.2"
  sha256 arm:   "b1b7c4fad7ff1178fa68c7a7dea636c669458e5407eada65d5aa13ba8a9825d0",
         intel: "c34b87ab9629db66f6da93138597ae890ada7c68d3ff21577a18141a1ceb579b"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: :big_sur

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Application Support/com.trollworks.gcs",
    "~/Library/Logs/com.trollworks.gcs",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
