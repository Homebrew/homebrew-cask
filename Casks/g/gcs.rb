cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.51.0"
  sha256 arm:   "9804d9de14771a76ac3241e13ae51eed916606dc1e2395a85820a6e49b59304a",
         intel: "5f70eaba2f887c01a0470ebcdc336ad658b50be393ac45647174d0846df55a54"

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
