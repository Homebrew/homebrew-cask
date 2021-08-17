cask "now-tv-player" do
  version "8.5.1"
  sha256 :no_check

  url "https://web.static.nowtv.com/watch/player/nowtv/gb/latest/NOWTVPlayer-Mac.dmg"
  name "NOW TV Player"
  homepage "https://www.nowtv.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "NOW TV Player.app"
end
