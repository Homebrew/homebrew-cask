cask "font-lxgw-simzhisong" do
  version "1.027"
  sha256 "a9fd681f78106b3017ff0a01fd3121079af33832c5cd4fc9e5d10f4a92cee82c"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
