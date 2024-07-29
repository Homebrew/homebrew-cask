cask "songkong" do
  arch arm: "-m1"

  version "10.8"
  sha256 :no_check

  url "https://www.jthink.net/songkong/downloads/current/songkong-osx#{arch}.dmg"
  name "SongKong"
  desc "Automated audio tag editor"
  homepage "https://www.jthink.net/songkong/"

  livecheck do
    url "https://www.jthink.net/songkong/en/download.jsp"
    regex(/SongKong\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "SongKong.app"

  zap trash: [
    "~/Library/Logs/SongKong",
    "~/Library/Preferences/com.jthink.songkong.plist",
    "~/Library/Preferences/SongKong",
    "~/Library/Reports/SongKong",
    "~/Library/Saved Application State/com.jthink.songkong.savedState",
  ]
end
