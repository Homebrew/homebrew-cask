cask "pitch" do
  version "1.3.0"
  sha256 "9367306b0e21c0e08f87a2530034b702c724258b4924a3a446b6dc08e484490b"

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
