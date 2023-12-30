cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.19.1"
  sha256 arm:   "4e14157f14d0b7883173917031dd67feaf5e80ea55e7583fc8ce79875c244911",
         intel: "663fe662add843475cca2b2fa4912bad5b7f9a0ab39cb86d6694334b55db7137"

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
