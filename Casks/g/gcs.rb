cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.37.1"
  sha256 arm:   "07b3513f6c93e5e54eae25d2a06a6cb01d78487b9a7c5df915c027b4003be3bf",
         intel: "706e0380cbc517e03b6b27e5efb06282e3d812d8ae278debc603659172f8e55e"

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
