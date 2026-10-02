cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.52.0"
  sha256 arm:   "73112f6f83e9eba127bb8344a6ac81be60cccd5a6d6b049658977f1e08daeb77",
         intel: "5749c2e256a2d712deb3f27cd11866796f113f49070898514ccdd8635fd73448"

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
