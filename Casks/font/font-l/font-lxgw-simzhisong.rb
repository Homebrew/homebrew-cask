cask "font-lxgw-simzhisong" do
  version "1.026"
  sha256 "83287f6c61afca309551964f10eca621590ba4ece3fe56de9720769a75817788"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
