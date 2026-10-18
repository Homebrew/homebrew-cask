cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.55.0"
  sha256 arm:   "1e92f4a12cf91a2c1c9587c12a83b800a12597e270aed4db278abef720457827",
         intel: "e8296f51eaf40d87b27083399dc26eedb9a13c8d9d08a8471c1b3ef39a702763"

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
