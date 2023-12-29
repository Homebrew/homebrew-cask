cask "songkong" do
  arch arm: "-m1"

  version "10.2,1.0"
  sha256 :no_check

  url "https://www.jthink.net/songkong/downloads/current/songkong-osx#{arch}.dmg"
  name "SongKong"
  desc "Automated audio tag editor"
  homepage "https://www.jthink.net/songkong/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "SongKong.app"

  zap trash: [
    "~/Library/Logs/SongKong",
    "~/Library/Preferences/SongKong",
    "~/Library/Reports/SongKong",
    "~/Library/Saved Application State/com.jthink.songkong.savedState",
  ]
end
