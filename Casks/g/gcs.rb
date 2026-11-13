cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.59.0"
  sha256 arm:   "a38e5133b5282befe1e312957a172b5a8f5bf48397b0005b5641fb1116141460",
         intel: "8c08a0653313036e3f292b03ebc0488247b2099dcd5de2df83bf7b7dc9ace268"

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
