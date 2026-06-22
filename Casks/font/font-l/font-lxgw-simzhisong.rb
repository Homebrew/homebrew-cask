cask "font-lxgw-simzhisong" do
  version "1.102"
  sha256 "025421c22efcf0218119894c8dc77501c974a61fa2bc0b558cd1cf7281e00721"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
