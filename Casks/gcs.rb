cask "gcs" do
  arch arm: "apple", intel: "intel"

  version "5.12.0"
  sha256 arm:   "b68f7a431a75cb4a43dc19729eb4138e32dc700f00daecf1dc126bc8a36d270e",
         intel: "235fdff5432141047b4e08c9f213a31f50a0927d682bd0a1dccbc4d5511cbe7c"

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
