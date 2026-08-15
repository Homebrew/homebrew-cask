cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.46.0"
  sha256 arm:   "cab967f7dcd7622a1c4328672d6f2035a2c2b5c208fb64252a9583fdb832c9b7",
         intel: "35f8aab56344d8d58a3c1e9ab30788dff82d314a12318a87dd50f6faa4566fa4"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg",
      verified: "github.com/richardwilkes/gcs/"
  name "gcs"
  desc "Character sheet editor for the GURPS Fourth Edition roleplaying game"
  homepage "https://gurpscharactersheet.com/"

  depends_on macos: :big_sur

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
