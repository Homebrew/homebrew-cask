cask "font-lxgw-heartserif" do
  version "0.923"
  sha256 "926b9d8465f276fffb6590dd38674bc60ff7560842536743972605a2884e2bde"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  desc "Chinese serif font derived from IPAmj Mincho"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
