cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.34.0"
  sha256 arm:   "0fb8dfcfe2f0110b2766ac3532a607b6ea3a2d57f1992937ba8222e05414e76e",
         intel: "3993542034044c1987526a7c4c1fcf9b90d85f37ff7a3bdc78e2b101cac8f481"

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
