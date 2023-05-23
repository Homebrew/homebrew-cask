cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.10.5"
  sha256 arm:   "b88b3f9c9aeb87816df850013cb16cad655afd0aa647cf9c26e7912e2ce5cd47",
         intel: "b4f342810f81197c78a45dcd43340ecd32015cdf6426f1a788da6e52036eae86"

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
