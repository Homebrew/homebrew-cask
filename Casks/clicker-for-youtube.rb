cask "clicker-for-youtube" do
  version "1.20,55"
  sha256 "d86c7fa620285b2fec5883ecdf249bd1d581d95ad5e7df0ec62f024357358496"

  url "https://www.dbklabs.com/clicker-for-youtube/appcast/Clicker%20for%20YouTube%20#{version.csv.first}.dmg"
  name "Clicker for YouTube"
  desc "Standalone YouTube app"
  homepage "https://www.dbklabs.com/clicker-for-youtube/"

  livecheck do
    url "https://www.dbklabs.com/clicker-for-youtube/appcast/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Clicker for YouTube.app"

  zap trash: [
    "~/Library/Application Scripts/com.dbklabs.clicker-for-youtube.Open-in-Clicker-for-YouTube",
    "~/Library/Caches/com.dbklabs.clicker-for-youtube",
    "~/Library/Containers/com.dbklabs.clicker-for-youtube.Open-in-Clicker-for-YouTube",
    "~/Library/Preferences/com.dbklabs.clicker-for-youtube.plist",
    "~/Library/WebKit/com.dbklabs.clicker-for-youtube",
    "/Users/Shared/com.dbklabs.clicker-for-youtube.ipak",
  ]
end
