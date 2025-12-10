cask "font-lxgw-simzhisong" do
  version "1.025.4"
  sha256 "365d2902a4b9fcb5b7fa89f665e94f6b6adf80f9168352230733f458740349c8"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
