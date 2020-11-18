cask "pitch" do
  version "1.5.0"
  sha256 "fbaf87a8b1433fc857ab5f4b4ed64e99a0470e09cc8cd28594a4846f6369154b"

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
