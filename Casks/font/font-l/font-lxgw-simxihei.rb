cask "font-lxgw-simxihei" do
  version "1.023"
  sha256 "e76b774de0512f612c00201dd9d7f6bd9bf35666714e870e20f14d3ce502fe61"

  url "https://github.com/lxgw/SimXiZhi/releases/download/v#{version}/SimXiHei.ttf"
  name "LXGW SimXiHei"
  name "新晰黑体"
  homepage "https://github.com/lxgw/SimXiZhi"

  font "SimXiHei.ttf"

  # No zap stanza required
end
