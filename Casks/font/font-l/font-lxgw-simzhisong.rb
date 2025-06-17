cask "font-lxgw-simzhisong" do
  version "1.023"
  sha256 "5ee6c1483ec516f76bdaf934b445df7195ed0426a1ae5fa326f2db7c42b1e6be"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
