cask "macdive" do
  version "2.16.3"
  sha256 "558ac4b14ae99391f425d31b44b86b6f28f3daeb46c738909be32de24a39d160"

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
