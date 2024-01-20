cask "clicker-for-youtube" do
  version "1.22"
  sha256 "5ebdc7c2f4d9e25895512193ae89dedafb86625f30ca341871d053e595957dbf"

  url "https://www.dbklabs.com/clicker-for-youtube/appcast/Clicker%20for%20YouTube%20#{version}.dmg"
  name "Clicker for YouTube"
  desc "Standalone YouTube app"
  homepage "https://www.dbklabs.com/clicker-for-youtube/"

  livecheck do
    url "https://www.dbklabs.com/clicker-for-youtube/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Clicker for YouTube.app"

  zap trash: [
    "/Users/Shared/com.dbklabs.clicker-for-youtube.ipak",
    "~/Library/Application Scripts/com.dbklabs.clicker-for-youtube.Open-in-Clicker-for-YouTube",
    "~/Library/Caches/com.dbklabs.clicker-for-youtube",
    "~/Library/Containers/com.dbklabs.clicker-for-youtube.Open-in-Clicker-for-YouTube",
    "~/Library/Preferences/com.dbklabs.clicker-for-youtube.plist",
    "~/Library/WebKit/com.dbklabs.clicker-for-youtube",
  ]
end
