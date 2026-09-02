cask "font-lxgw-simzhisong" do
  version "1.103"
  sha256 "43f97af1df5c93c4550d9949ac85eebab761b17507ecd46b02b537682b6e6b13"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
