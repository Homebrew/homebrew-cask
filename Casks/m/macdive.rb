cask "macdive" do
  version "2.16.2"
  sha256 "ea18062585b1bed799d27ee68cfa8cce27ca5b005eaf255118cb153e3a44f82e"

  url "https://www.mac-dive.com/downloads/MacDive_#{version}.dmg"
  name "MacDive"
  desc "Digital dive log"
  homepage "https://www.mac-dive.com/"

  livecheck do
    url "https://www.mac-dive.com/shimmer/?appcast&appName=MacDive"
    strategy :sparkle
  end

  app "MacDive.app"

  zap trash: [
    "~/Library/Application Support/MacDive",
    "~/Library/Preferences/com.mintsoftware.MacDive2.plist",
    "~/Library/Saved Application State/com.mintsoftware.MacDive2.savedState",
  ]
end
