cask "font-lxgw-simzhisong" do
  version "1.024"
  sha256 "0bc9e99be9dfd291f38f95eb2689fedef9cbc83ed8c3057ec0265c8a70e94381"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
