cask "clicker-for-youtube" do
  version "1.9,40"
  sha256 "768e34ceb1b67f5b4ccd1bb2841f174129f230bbfd1a5bcb064a9c27bb32a4ae"

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
