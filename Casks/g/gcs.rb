cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.38.0"
  sha256 arm:   "e66c04d64d63e35349fbb786c90efc30c255a6c1c1a9eb72f288e94521946af2",
         intel: "2a7070af800310994b70964f2d44a0c3f7b081deeeea6616220ada8868ab3fa1"

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
