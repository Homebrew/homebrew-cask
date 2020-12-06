cask "hazeover" do
  version "1.8.8,1035"
  sha256 "f8b4ab870b510df042d4f22e4782a72aa34c8b4392fb9ec1a3ac45b6e28cc213"

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
