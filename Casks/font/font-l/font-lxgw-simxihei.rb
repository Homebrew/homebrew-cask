cask "font-lxgw-simxihei" do
  version "1.012"
  sha256 "b8fe96460f1c0a2e3d335d988d61e8a0ae04a0312a2973fc35284020c31213d9"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
