cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.40.1"
  sha256 arm:   "de53081c44cf734152016c9bc97825ab3a6a8e8d32325dc6f2a48601da596b40",
         intel: "989df61320d1d4b6a2efc64fc5254846f83069e9f422cd08a5d7f3e0423ce1d1"

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
