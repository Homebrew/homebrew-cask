cask "pitch" do
  version "1.8.2"
  sha256 "65517d255180aef0639bf18b1d6f11a2c72e3b008ec94c42e6d1e9a1e305501c"

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
