cask "font-lxgw-simzhisong" do
  version "1.023.6"
  sha256 "b50be8a224d9867d0f3f3104952a8df41f735e1cb403467402ce07f9c2729535"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
