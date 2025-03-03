cask "font-lxgw-simzhisong" do
  version "1.011"
  sha256 "69a809bc510c8efdab58e7b10fb8467e05832ade8bec033ec31040140cab7520"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
