cask "font-lxgw-simzhisong" do
  version "1.024.5"
  sha256 "c09a4c40c6597c8038ccdb0ebc8b3b0340c768d53dcc729cab2259e05a26e478"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
