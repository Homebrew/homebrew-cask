cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.36.0"
  sha256 arm:   "e95fa869b3e43016a39eac77c37bffa5020f61186b6a34597047fd098f7b3913",
         intel: "3722dcf8953a44e6e5a926690962e99924ea497666356c86ea56e1bd5b242ea6"

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
