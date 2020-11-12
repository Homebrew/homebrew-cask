cask "pitch" do
  version "1.4.0"
  sha256 "399e15fc51ce3ee65057291a358ed831158cd1cfac32df9b73ca3b6bc6b66c5e"

  url "https://desktop-app-builds.pitch.com/Pitch-#{version}.dmg"
  appcast "https://desktop-app-builds.pitch.com/latest-mac.yml"
  name "Pitch"
  desc "Collaborative presentation software"
  homepage "https://pitch.com/"

  app "Pitch.app"

  zap trash: [
    "~/Library/Application Support/Pitch",
    "~/Library/Logs/Pitch",
    "~/Library/Preferences/io.pitch.pitch-macos.plist",
    "~/Library/Saved Application State/io.pitch.pitch-macos.savedState",
  ]
end
