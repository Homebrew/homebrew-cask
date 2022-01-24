cask "clicker-for-netflix" do
  version "2.13.0"
  sha256 "3e852a75f61d2091fc1f63a167431200022c13e48d9de3a3c8b0f10950956e22"

  url "https://www.dbklabs.com/clicker-for-netflix/appcast/Clicker%20for%20Netflix%20#{version}.dmg"
  name "Clicker for Netflix"
  desc "Best standalone Netflix player"
  homepage "https://www.dbklabs.com/clicker-for-netflix/"

  livecheck do
    url "https://www.dbklabs.com/clicker-for-netflix/appcast/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Clicker for Netflix.app"

  zap trash: [
    "~/Library/Caches/com.dbklabs.clicker-for-netflix",
    "~/Library/Preferences/com.dbklabs.clicker-for-netflix.plist",
    "~/Library/WebKit/com.dbklabs.clicker-for-netflix",
  ]
end
