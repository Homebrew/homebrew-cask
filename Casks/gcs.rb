cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.4.0"
  sha256 arm:   "12dba13b5defad59d27ab73ed9718a1763d7a284f3f68afb6e9dabdfa6ed6f15",
         intel: "fe2bac648129948afa245aeca27104f2e55e8c316cfbce586251ed564d8b873c"

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
