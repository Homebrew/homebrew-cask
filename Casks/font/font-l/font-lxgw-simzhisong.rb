cask "font-lxgw-simzhisong" do
  version "1.101"
  sha256 "ddfdc43d7bce7715cdd942a888c4caac28d0e35ade120f1f7011bda511df96c2"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
