cask "font-lxgw-simzhisong" do
  version "1.022"
  sha256 "8bf5aac4e20c4114fbcb15146494ef46cbbdbbfb9b36efc1a915180f134ba5c2"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
