cask "font-lxgw-simzhisong" do
  version "1.008.2"
  sha256 "63765a97ab37f6dc74fc55efee4439508397c0afa997f7304ad4651a1a27cd4f"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
