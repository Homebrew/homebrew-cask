cask "songkong" do
  arch arm: "-m1"

  version "9.6"
  sha256 :no_check

  url "https://www.jthink.net/songkong/downloads/current/songkong-osx#{arch}.dmg"
  name "SongKong"
  desc "Automated audio tag editor"
  homepage "https://www.jthink.net/songkong/"

  livecheck do
    url "https://community.jthink.net/c/songkong/songkong-announcements"
    regex(/href.*?songkong[._-](\d+(?:-\d+)*)[._-]\w*?/i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| (match[0]).tr("-", ".") }
    end
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
