cask "font-lxgw-simzhisong" do
  version "1.020"
  sha256 "66243cfc9bccae4f540156e2752ac95f2d672596e79351d5799c321716650340"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
