cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.62.0"
  sha256 arm:   "78ed4f14d4b9235308e6506ee6611462cf076dc734edf6e7ff6f9254b709dcbe",
         intel: "cf6948c8c8156054ca0b4eaa96c7c491e12f6f9bdb9c414c8d7b2f2c1a32f47b"

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
