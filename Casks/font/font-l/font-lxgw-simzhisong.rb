cask "font-lxgw-simzhisong" do
  version "1.006"
  sha256 "8f3ef6ff72f0ee1c6ecb91302e0936e48012bc53ac3065aca58bc913c2be3188"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
