cask "pitch" do
  version "1.2.2"
  sha256 "0bbb116f7a36e5247a48e4e336b06f71e6d40f7e3ac14601e2bd8d991b0d9030"

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
