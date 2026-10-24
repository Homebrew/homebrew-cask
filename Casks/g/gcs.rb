cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.56.0"
  sha256 arm:   "dcf217c9a88d3fd65e39ff618c8207556beafb8654cd53a52cd5e426e95585b0",
         intel: "0f93971fbe2731014d33056083b086f31b9a106c1084be21c925ea4498c7b499"

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
