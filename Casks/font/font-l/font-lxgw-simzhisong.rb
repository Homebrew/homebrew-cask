cask "font-lxgw-simzhisong" do
  version "1.009"
  sha256 "1a0cc70df1e506df092584de52d6dedc050f94d88024214c6bb74e532993d1a5"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
