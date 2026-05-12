cask "font-lxgw-simzhisong" do
  version "1.100"
  sha256 "f2182949bed84d01bb252787b85bd3af1288d28dd70674c4e07917857f49b973"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
