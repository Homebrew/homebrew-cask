cask "font-lxgw-simzhisong" do
  version "1.010"
  sha256 "e6a0fb6c53b3a3ec0346650b8509ed0690f835e6726258e433c3609cf274be97"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
