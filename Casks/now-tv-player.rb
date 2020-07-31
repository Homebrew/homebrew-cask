cask "now-tv-player" do
  version :latest
  sha256 :no_check

  url "https://web.static.nowtv.com/watch/player/nowtv/gb/latest/NOWTVPlayer-Mac.dmg"
  name "NOW TV Player"
  homepage "https://www.nowtv.com/"

  app "NOW TV Player.app"
end
