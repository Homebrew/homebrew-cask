cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.49.0"
  sha256 arm:   "03826a87e4367472674e08b008bdfea88a7bff21401ac41ba5a16b18689cadb9",
         intel: "c786e0bc6bce55107c41d6a2f0fa11079547ecbe7fd620f7df1e1993451d2f2a"

  url "https://github.com/richardwilkes/gcs/releases/download/v#{version}/gcs-#{version}-macos-#{arch}.dmg"
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
