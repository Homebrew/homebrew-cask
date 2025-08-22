cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.38.1"
  sha256 arm:   "ef4dbd2023fb133cf8763b42ea6e632c5ce69057bd89d6e145c0f4b56d5a7722",
         intel: "0790688e922b35df6bbf72da4a53087b221405f30c4ec7f59e563f7700b3d539"

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
