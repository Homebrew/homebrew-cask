cask "font-lxgw-simzhisong" do
  version "1.026.2"
  sha256 "c0980fe4ce12fcb7d6b84efe2d5afa8feb8ce738bac3790536ea1a5ae6513e50"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
