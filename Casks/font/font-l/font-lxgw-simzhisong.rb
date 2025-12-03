cask "font-lxgw-simzhisong" do
  version "1.025.2"
  sha256 "330463e493d020e0dae0e82436727c4fd7c1cb4f146866d5beea44b6b2448858"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
