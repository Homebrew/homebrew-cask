cask "clicker-for-youtube" do
  version "1.16,48"
  sha256 "23c27513b05293fcdf117018273f407dad4f08982e0af9abc28ba9e5051d2538"

  url "https://www.dbklabs.com/clicker-for-youtube/appcast/Clicker%20for%20YouTube%20#{version.before_comma}.dmg"
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
