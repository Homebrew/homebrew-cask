cask "hazeover" do
  if MacOS.version <= :big_sur
    version "1.8.9,1050"
    sha256 "de5e4a660cc30276155606b539d1ae58684115a3983d69598f1505fcad499a87"

    url "https://hazeover.com/get/HazeOver_10.13.dmg"

    livecheck do
      skip "Legacy version for Big Sur and below"
    end
  else
    version "1.9.1,1089"
    sha256 :no_check

    url "https://hazeover.com/HazeOver.dmg"

    livecheck do
      url "https://hazeover.com/updates.xml"
      strategy :sparkle
    end
  end

  name "HazeOver"
  desc "Windows manager and desktop organizer"
  homepage "https://hazeover.com/"

  depends_on macos: ">= :high_sierra"

  app "HazeOver.app"

  uninstall launchctl: "com.pointum.hazeover.launcher",
            quit:      "com.pointum.hazeover"

  zap trash: [
    "~/Library/Caches/com.pointum.hazeover",
    "~/Library/Preferences/com.pointum.hazeover.plist",
  ]
end
