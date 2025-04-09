cask "font-lxgw-simzhisong" do
  version "1.021.2"
  sha256 "84d8a2b498574a056aa3bdebcc14d0ff996c99116518adee41adc156341aca8c"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimZhiSong.ttf"
  name "LXGW SimZhiSong"
  name "新致宋体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimZhiSong.ttf"

  # No zap stanza required
end
