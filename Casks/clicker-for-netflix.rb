cask "clicker-for-netflix" do
  version "2.11.0"
  sha256 "0d1dd91dbe241325fec92918787ffcd5549c1058f97d55c3fce1ede4a5ed5f73"

  url "https://www.dbklabs.com/clicker-for-netflix/appcast/Clicker%20for%20Netflix%20#{version}.dmg"
  appcast "https://www.dbklabs.com/clicker-for-netflix/appcast/appcast.xml"
  name "Clicker for Netflix"
  desc "Best standalone Netflix player"
  homepage "https://www.dbklabs.com/clicker-for-netflix/"

  depends_on macos: ">= :sierra"

  app "Clicker for Netflix.app"

  zap trash: [
    "~/Library/Caches/com.dbklabs.clicker-for-netflix",
    "~/Library/Preferences/com.dbklabs.clicker-for-netflix.plist",
    "~/Library/WebKit/com.dbklabs.clicker-for-netflix",
  ]
end
