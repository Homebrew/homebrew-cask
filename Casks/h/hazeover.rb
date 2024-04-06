cask "hazeover" do
  version "1.9.4"
  sha256 :no_check

  url "https://hazeover.com/HazeOver.dmg"
  name "HazeOver"
  desc "Windows manager and desktop organiser"
  homepage "https://hazeover.com/"

  livecheck do
    url "https://hazeover.com/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "HazeOver.app"

  uninstall launchctl: "com.pointum.hazeover.launcher",
            quit:      "com.pointum.hazeover"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
