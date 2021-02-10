cask "hazeover" do
  version "1.8.9,1050"
  sha256 :no_check

  url "https://hazeover.com/HazeOver.dmg"
  name "HazeOver"
  desc "Windows manager and desktop organizer"
  homepage "https://hazeover.com/"

  livecheck do
    url "https://hazeover.com/updates.xml"
    strategy :sparkle
  end

  app "HazeOver.app"

  uninstall launchctl: "com.pointum.hazeover.launcher",
            quit:      "com.pointum.hazeover"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
