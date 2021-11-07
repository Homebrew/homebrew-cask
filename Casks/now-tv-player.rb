cask "now-tv-player" do
  version "8.7.0"
  sha256 :no_check

  url "https://web.static.nowtv.com/watch/player/nowtv/gb/latest/NOWTVPlayer-Mac.dmg"
  name "NOW TV Player"
  desc "Video streaming service player"
  homepage "https://www.nowtv.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "NOW TV Player.app"
end
