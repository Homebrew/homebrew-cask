cask "hazeover" do
  version "1.8.8,1035"
  sha256 :no_check

  url "https://hazeover.com/HazeOver.dmg"
  appcast "https://hazeover.com/updates.xml"
  name "HazeOver"
  desc "Windows manager and desktop organizer"
  homepage "https://hazeover.com/"

  app "HazeOver.app"

  uninstall launchctl: "com.pointum.hazeover.launcher",
            quit:      "com.pointum.hazeover"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
