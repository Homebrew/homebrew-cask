cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.58.0"
  sha256 arm:   "9f4e65643462bfa9d521b7970807261c3f082eedd1a9d540426d28968bf8c1b9",
         intel: "4d3d7e7a798c0515b15028cc1faf9cc5e36faacaaef9ffbe5121955ac0bed0fc"

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
