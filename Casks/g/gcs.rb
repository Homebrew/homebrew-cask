cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.57.0"
  sha256 arm:   "edbbc29ac37c3347e4cefb25d3e836b9efa753c95a9bbd5357a013e6387e2e3b",
         intel: "cf0c5828a09416db9e79440144713688de88a8178925db2bbe116172f5f4b0e8"

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
