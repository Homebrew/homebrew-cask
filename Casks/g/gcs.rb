cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.60.0"
  sha256 arm:   "0f77af39cbbd08b2aa4c6d2645d94ba7afef307053bfc1bc0b43c6c73e8127d3",
         intel: "01c379f4b9a0273fff6765531a6933ae52e751dca7aa8b3e14b5cca76bd6b81d"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on :macos

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
