cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.28.0"
  sha256 arm:   "dec8390e7ec29937819eea88dabc27cd4b49df0b674191ac10353c896596ee19",
         intel: "30bb0eaaa5d27319882921fd016627dfa0ebed7492ae8fe2727d57f964cdbcb6"

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
