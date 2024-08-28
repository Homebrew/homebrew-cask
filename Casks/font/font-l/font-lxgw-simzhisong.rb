cask "font-lxgw-simzhisong" do
  version "1.003"
  sha256 "ffc02525c11ad595e88116f111d36c3daefe94f45248be733b7514736090394a"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
