cask "font-lxgw-simxihei" do
  version "1.027"
  sha256 "79c00946c8762a5c026aabe060ced704a1df39592607e7e90ae9479e39b0351c"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
