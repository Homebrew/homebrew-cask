cask "font-lxgw-heartserif" do
  version "0.923.3"
  sha256 "2e67490ca4dc14d915267463191f7a3e81451220502d314827b2b7a0dc8fa0c0"

  url "https://github.com/lxgw/LxgwNeoZhiSong/releases/download/v#{version}/LXGWHeartSerif.ttf"
  name "LXGW Heart Serif"
  name "霞鹜铭心宋"
  desc "Chinese serif font derived from IPAmj Mincho"
  homepage "https://github.com/lxgw/LxgwNeoZhiSong"

  font "LXGWHeartSerif.ttf"

  # No zap stanza required
end
