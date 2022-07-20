cask "macdive" do
  version "2.16.1"
  sha256 "870c51cb1fb526a9c6ef208782269a27a9eba30365538162ecf82925659e9de0"

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
