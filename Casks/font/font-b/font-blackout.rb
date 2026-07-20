cask "font-blackout" do
  version :latest
  sha256 :no_check

  url "https://github.com/theleagueof/blackout/archive/refs/heads/master.tar.gz",
      verified: "github.com/theleagueof/blackout/"
  name "Blackout"
  homepage "https://www.theleagueofmoveabletype.com/blackout"

  font "blackout-master/Blackout 2 AM.ttf"
  font "blackout-master/Blackout Midnight.ttf"
  font "blackout-master/Blackout Sunrise.ttf"

  # No zap stanza required
end
