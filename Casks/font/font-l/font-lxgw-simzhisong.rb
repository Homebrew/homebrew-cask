cask "font-lxgw-simzhisong" do
  version "1.021"
  sha256 "5baf5278bbef49f0d6d73bba73c470304e6ecbe882fea37347d333a525615258"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
