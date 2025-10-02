cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.40.2"
  sha256 arm:   "371cf1900325cdc49eb428ac5022319fb47cd6fc2f9b99228de91d3ca37be7a5",
         intel: "5b65f700589cd21c040aa934636a9456d2a92f26e23380f3d092cc6e785969cb"

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
