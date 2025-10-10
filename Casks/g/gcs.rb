cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.41.0"
  sha256 arm:   "39ddddf2dd5a80bfe09abb7f3cd32ceb0bf7acaeeaf4e119dc2d85e52ebbe671",
         intel: "ae3827de13ee7da862609ad2fb5ddf14829c3eaa3751306ec038675530279521"

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
