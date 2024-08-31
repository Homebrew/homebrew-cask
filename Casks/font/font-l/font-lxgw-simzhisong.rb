cask "font-lxgw-simzhisong" do
  version "1.004"
  sha256 "665a295c3bf5c28c7df7f1b57db441ff5ae03d16b434763064970506aff3429b"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
