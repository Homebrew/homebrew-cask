cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.11.0"
  sha256 arm:   "0824825254cf2027d5a6c356dfc60339e48d3e6c1b0e3a998000abc1ef079651",
         intel: "b2cfe50b5d468611006bd0f1517cb370765dc4812a150143064e69c0f3d9da2a"

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
