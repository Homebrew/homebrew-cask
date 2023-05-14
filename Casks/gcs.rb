cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.10.1"
  sha256 arm:   "19dc133407e96613a7cf0c184ccec42ef8d3effda51fcc34352bb6a2286f831c",
         intel: "b7896b2ba1f9ee5b979156bb9df2bf4c784e396eeb6ed93f35c048ff2ac8e612"

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
