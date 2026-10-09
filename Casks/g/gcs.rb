cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.54.0"
  sha256 arm:   "45a8ce73c5914f95216b5e3334db5d2e747a7244bbf1d9f203a4afb027046bdc",
         intel: "04d9157c967c73f9f1cafba64adf71cdf2a15fdfa18e6324c2f79523c3ae17b2"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on :macos

  app "GCS.app"

  zap trash: [
    "~/GCS",
    "~/Library/Application Support/com.trollworks.gcs",
    "~/Library/Logs/com.trollworks.gcs",
    "~/Library/Logs/gcs.log",
    "~/Library/Preferences/com.trollworks.gcs.plist",
    "~/Library/Preferences/gcs.json",
    "~/Library/Saved Application State/com.trollworks.gcs.savedState",
  ]
end
