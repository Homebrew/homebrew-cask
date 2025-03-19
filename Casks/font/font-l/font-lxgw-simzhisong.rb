cask "font-lxgw-simzhisong" do
  version "1.012"
  sha256 "894da63343498d2f753a561c38bc50d84e74bdf055174c4e5558d02d0466a423"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
