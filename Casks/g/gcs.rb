cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.24.1"
  sha256 arm:   "ffe390544e4001fd902233823e4ab3cc5fb3bc7a2afbb44ee83e6b9bead8e832",
         intel: "c28d7801a59c18d1ae6f7463cbda53c46025de12b697f6f6db3c4847c48aa8ef"

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
