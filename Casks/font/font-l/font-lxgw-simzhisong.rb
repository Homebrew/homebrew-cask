cask "font-lxgw-simzhisong" do
  version "1.024.3"
  sha256 "25b5a054ae8d7e765b9da9699d745c697d595904cb6d782b908a4261f69ef26e"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
