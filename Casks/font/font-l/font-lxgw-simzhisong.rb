cask "font-lxgw-simzhisong" do
  version "1.007"
  sha256 "c900fc155946dd0678265778f49703af527219b56d6ac8f4c2222321418330df"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
