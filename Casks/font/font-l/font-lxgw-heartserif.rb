cask "font-lxgw-heartserif" do
  version "0.923.1"
  sha256 "d9599d890d853250ef22edd10ec8915cedb38e80bb9b775d213e374f4ed72715"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  desc "Chinese serif font derived from IPAmj Mincho"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
