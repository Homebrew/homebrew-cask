cask "font-lxgw-simzhisong" do
  version "1.024.1"
  sha256 "5bee5add26e043df7143de9791b929910b79f197a76b30a9d36c239ca20774e4"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
