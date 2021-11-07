cask "clicker-for-netflix" do
  version "2.12.0"
  sha256 "a169329cc61fc75fa93c1628edf2e2f48414ccf7c571fa028749b3404dfa5cd1"

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
