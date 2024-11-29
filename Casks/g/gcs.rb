cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.29.0"
  sha256 arm:   "2788c7e0614b61ecec77ac1e48409d293ff169cf05bd676588156eeef225ae9c",
         intel: "f7376cf30d512fa3c537525453fc14935ed541e29f07f987fd55a70a4e6851c4"

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
