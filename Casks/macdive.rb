cask "macdive" do
  version "2.16.0"
  sha256 "70e57fd551196869c94049df097999c3629a0dc66c02dcb2c42373fd63792955"

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
