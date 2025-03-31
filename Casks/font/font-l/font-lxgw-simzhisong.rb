cask "font-lxgw-simzhisong" do
  version "1.021.1"
  sha256 "b1f9fbba954fcd4630f5e6ad6923bc7f58a4ba3584aacfcfe4173138b30e701b"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
