cask "font-lxgw-simzhisong" do
  version "1.022.1"
  sha256 "8fabbbbbb4d9f34e04dc5d5c8e9842a08d3ff8f173f975218611f058f64f3f9b"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
