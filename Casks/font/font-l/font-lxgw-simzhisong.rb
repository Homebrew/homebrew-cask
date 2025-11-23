cask "font-lxgw-simzhisong" do
  version "1.024.7"
  sha256 "c39ad72cc6b95beeb9b8a2e24969e1cfa65fcac1858c98b795ca67564c99041e"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
