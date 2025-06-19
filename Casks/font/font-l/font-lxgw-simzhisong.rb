cask "font-lxgw-simzhisong" do
  version "1.023.1"
  sha256 "7f64187bbda74cd9a8cdff50001948909616708320e85203109cba495ad8808f"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
