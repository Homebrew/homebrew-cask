cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.16.2"
  sha256 arm:   "aa39a76ebd552e65705b69414552a10e0973c3ce73994c9e89c459bf905e865e",
         intel: "d62cbb0a9b70d21c4d22c8a68de235c25fef489fe7f9f73e89a4d28a043f632a"

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
