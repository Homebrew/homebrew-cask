cask "hazeover" do
  version "1.8.6-970"
  sha256 "4d18a833babc96bcf19982a413d2d9c3b3334b1057cddc87d4c804acff6acafa"

  url "https://hazeover.com/HazeOver.dmg"
  appcast "https://hazeover.com/updates.xml"
  name "HazeOver"
  desc "Windows manager and desktop organizer app"
  homepage "https://hazeover.com/"

  app "HazeOver.app"

  uninstall launchctl: "com.pointum.hazeover.launcher",
            quit:      "com.pointum.hazeover"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
