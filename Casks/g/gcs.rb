cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.20.2"
  sha256 arm:   "e6470821ff2fbe93d25249fedb5b79de763e2d096670e0bebf1d9c7d8b7b68cc",
         intel: "0efab9e539c6e98aaeff1849e97d9af1f867da3fc2fff6096ffc573d775ac3bc"

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
