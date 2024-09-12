cask "font-lxgw-simzhisong" do
  version "1.005"
  sha256 "fd2d6263e5154015162eef4a156637c725882104a36edf5f756bdef7a57febd6"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
