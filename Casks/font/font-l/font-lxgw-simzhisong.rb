cask "font-lxgw-simzhisong" do
  version "1.024.4"
  sha256 "ebf7ebb869403866cc8866509402ce6465b4d1269b2f88e47537ff8722e56639"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
