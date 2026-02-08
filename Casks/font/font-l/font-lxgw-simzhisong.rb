cask "font-lxgw-simzhisong" do
  version "1.027.1"
  sha256 "01b6886f5d1cbd095f0da3458b34afbda3db2d01bd8cce0d4d694db0e28d0cd9"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
