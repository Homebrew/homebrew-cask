cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.37.0"
  sha256 arm:   "cbcd4b8f43e4b6084dbf9949b196a5ed1a64948e6248d7123417bf7e4a6b4762",
         intel: "5b664e8a26dff5a230b2149b7967e9a2d21d75d1f40a15e92ae9a34a36663d3f"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: ">= :mojave"

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
