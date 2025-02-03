cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.33.1"
  sha256 arm:   "d4c380e512a350fc4f75092e6a61ab6762f03b2f7137ea9cecd1a204966b050b",
         intel: "ceb8c3dc6d93fdffe427ccc2fd5618448e3ec7c22a5d0f411ba433f964d81261"

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
