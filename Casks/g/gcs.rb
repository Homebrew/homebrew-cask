cask "gcs" do
  arch arm: "arm64", intel: "amd64"

  version "5.61.0"
  sha256 arm:   "2cff6828f11ad9cf08d4b380749e295d14be2374971d8440f99bdb01ef78374a",
         intel: "dd958eb21687aae8859937e9eeffa566ce9b4c46c627c75195933d2e43be5316"

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
